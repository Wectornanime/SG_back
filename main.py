import mysql.connector
import dotenv
import os

dotenv.load_dotenv(dotenv.find_dotenv())

def conn():
    return mysql.connector.connect (
        host = os.getenv('db_host'),
        user = os.getenv('db_user'),
        password = os.getenv('db_password'),
        database = os.getenv('db_database')
    )


def findMedicamento(medicamento):
    line=dict()
    ret=list()
    db = conn()
    mycursor = db.cursor()
    cmd = f"SELECT farmaco, detentor, medicamento, concentracao, status FROM `Medicamentos` WHERE medicamento LIKE '%{medicamento}%'"
    mycursor.execute(cmd)
    result=mycursor.fetchall()
    for col in result:
        line['farmaco'] = col[0]
        line['detentor'] = col[1]
        line['medicamento'] = col[2]
        line['concentracao'] = col[3]
        line['status'] = col[5]

        ret.append(line.copy())
        line.clear()

    db.close()
    return ret

def get_generic():
    pass