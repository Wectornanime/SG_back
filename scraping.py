from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.options import Options
from bs4 import BeautifulSoup
import camelot
import sqlite3
import os
from time import sleep
from datetime import datetime


anvisa_url = 'https://www.gov.br/anvisa/pt-br/setorregulado/regularizacao/medicamentos/medicamentos-de-referencia/lista-de-medicamentos-de-referencia'

bula_url = 'https://consultas.anvisa.gov.br/#/bulario/'

dtn = datetime.now()
export_file_name = f'{dtn.day}-{dtn.month}-{dtn.year}-{dtn.hour}-{dtn.minute}.sql'

# funcao para filtrar a tabela e fazer tratamento
def filterTable(temp_table):
    for row in range(0, len(temp_table.df)):
        if temp_table.df.at[row, 3] != '' and '/' not in temp_table.df.at[row, 3]:
            for col in range(0, len(temp_table.df.columns)):
                if temp_table.df.at[row, col] == '':
                    # print(f'{temp_table.df.at[row-1, col]} {temp_table.df.at[row+1, col]}')
                    temp_table.df.at[row,col] = f'{temp_table.df.at[row-1, col]} {temp_table.df.at[row+1, col]}'

    for row in range(0, len(temp_table.df)):
        if temp_table.df.at[row, 3] == '' or '/' in temp_table.df.at[row, 3]:
            temp_table.df = temp_table.df.drop(index=row)
        
    temp_table.df = temp_table.df.reset_index(drop=True)
    
    return temp_table


def conn():
    return sqlite3.connect(os.getenv('db_database'))


def addToDB(table, status):
    db = conn()
    mycursor = db.cursor()
    # mycursor.execute('DELETE FROM `Medicamentos`')
    # mycursor.execute('VACUUM')

    cmd = f"INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, status) VALUES"

    for row in range(0, len(table.df)):
        cmd += f" ('{table.df.at[row, 0]}', '{table.df.at[row, 1]}', '{table.df.at[row, 2]}', '{table.df.at[row, 4]}', '{status}')"
        if row < len(table.df)-1:
            cmd += ', '
    
    mycursor.execute(cmd)
    db.close()


def exportSQL(temp_table, status):
    try:
        file = open('exports/'+export_file_name, 'r', encoding='utf-8')
        cmd = ''.join(file.readlines())
        file.close()
    except:
        cmd = ''

    file = open('exports/'+export_file_name, 'w', encoding='utf-8')

    cmd += f"INSERT INTO `Medicamentos` (farmaco, detentor, medicamento, concentracao, bula, status) VALUES\n"

    driver = initDriverBull()
    for row in range(0, len(temp_table.df)):

        bula = getBula(driver, temp_table.df.at[row, 3])
        cmd0 = f" ('{temp_table.df.at[row, 0]}', '{temp_table.df.at[row, 1]}', '{temp_table.df.at[row, 2]}', '{temp_table.df.at[row, 4]}', '{bula}', '{status}')"
        print(cmd0)
        cmd += cmd0
        if row < len(temp_table.df)-1:
            cmd += ',\n'
        else:
            cmd += ';\n\n'
    
    driver.quit()
    file.write(str(cmd))
    file.close()


def initDriverBull():
    driver = webdriver.Firefox()
    driver.get(bula_url)
    sleep(1)
    return driver


def getBula(driver, cod_med):
    driver.find_element(By.ID, 'txtNumeroRegistro').send_keys(cod_med)
    sleep(0.25)
    driver.find_element(By.CLASS_NAME, 'btn-primary').click()
    sleep(1)
    try:
        xpath = "//td[@class='text-center col-sm-1']//a[@class='ng-scope']"
        element = driver.find_element(By.XPATH, xpath)
        link_bula = element.get_attribute('href')
    except:
        link_bula = ''
        try:
            xpath = "//a[@class='btn btn-default ng-scope']"
            driver.find_element(By.XPATH, xpath).click()
        except:
            pass
    else:
        xpath = "//a[@class='btn btn-default ng-scope']"
        driver.find_element(By.XPATH, xpath).click()
    
    sleep(0.5)
    driver.find_element(By.ID, 'txtNumeroRegistro').clear()
    return link_bula


# inicia o FireFox
print('Iniciando o FireFox')
opc = Options()
opc.headless = True
driver = webdriver.Firefox(options=opc)
driver.get(anvisa_url)
sleep(10)

# busca um elemento especifico no html
xpath = "//div[@id='parent-fieldname-text']//ul"
element = driver.find_element(By.XPATH, xpath)
html_content = element.get_attribute('outerHTML')

# pega apenas a tag 'a'
print('Buscando o elemento HTML que contem os links')
soup = BeautifulSoup(html_content, 'html.parser')
elementList = soup.find_all(name='a')

# separa os links da tag
print('extraindo os links da tabela A')
tableList = list()
for el in elementList:
    if 'https' in el.get('href') and 'lista-a' in el.get('href'): # filtra apenas a tabela A
        tableList.append(el.get('href'))

# encerra o FireFox
driver.quit()
print('FireFox encerrado')

for index, link in enumerate(tableList):
    print('Lendo a tabela')
    tables = camelot.read_pdf(link, flavor='stream', pages='all', flag='text')

    for pg in range(0, len(tables)):
        table = tables[pg]

        # verifica a primeira pag do pdf para tratar as primeiras linhas
        if pg == 0:
            if index == 0:
                table.df = table.df[2:].reset_index(drop=True)
            elif index == 1:
                table.df = table.df[4:].reset_index(drop=True)

        if index == 0:
            status = 'ativo'
        else:
            status = 'inativo'

        table = filterTable(table)
        exportSQL(table, status)
    
    if index == len(tableList)-1:
        print('Encerrando programa')
        sleep(0.25)
        print('Programa encerrado')
    else:
        print('Indo para a proxima tabela')
        sleep(0.25)
