import requests

registro = '100890280'

while True:
    response = requests.get(f'https://consultas.anvisa.gov.br/api/consulta/bulario?count=10&filter%5BnumeroRegistro%5D={registro}&page=1')
    print(response.status_code)

    if response.status_code == 200:
        data = response.json()
        print(data['content'])
        break

