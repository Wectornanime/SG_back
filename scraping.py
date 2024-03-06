from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.options import Options
from bs4 import BeautifulSoup
import camelot
import sqlite3
import os
from time import sleep


anvisa_url = 'https://www.gov.br/anvisa/pt-br/setorregulado/regularizacao/medicamentos/medicamentos-de-referencia/lista-de-medicamentos-de-referencia'


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
    
    mycursor.execute(cmd)
    db.close()



# inicia o FireFox
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
soup = BeautifulSoup(html_content, 'html.parser')
elementList = soup.find_all(name='a')

# separa os links da tag
tableList = list()
for el in elementList:
    if 'https' in el.get('href') and 'lista-a' in el.get('href'): # filtra apenas a tabela A
        tableList.append(el.get('href'))

# encerra o FireFox
driver.quit()

for index, link in enumerate(tableList):
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
        addToDB(table, status)
