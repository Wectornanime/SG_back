from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.options import Options
from bs4 import BeautifulSoup
from time import sleep


anvisa_url = 'https://www.gov.br/anvisa/pt-br/setorregulado/regularizacao/medicamentos/medicamentos-de-referencia/lista-de-medicamentos-de-referencia'

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

print(tableList)


