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


def findMedicamento(farm):
    line=dict()
    ret=list()
    db = conn()
    mycursor = db.cursor()
    cmd = f"SELECT farmaco, detentor, medicamento, concentracao, status FROM `Medicamentos` WHERE farmaco LIKE '%{farm}%'"
    mycursor.execute(cmd)
    result=mycursor.fetchall()
    for col in result:
        line['farmaco'] = col[0]
        line['detentor'] = col[1]
        line['medicamento'] = col[2]
        line['concentracao'] = col[3]
        line['status'] = col[4]
        ret.append(line.copy())
        line.clear()

    db.close()
    return ret

def get_farmaco(med):
    db = conn()
    mycursor = db.cursor()
    cmd = f"SELECT DISTINCT farmaco FROM `Medicamentos` WHERE medicamento LIKE '%{med}%'"
    mycursor.execute(cmd)
    result=mycursor.fetchone()[0]
    db.close()
    return result
