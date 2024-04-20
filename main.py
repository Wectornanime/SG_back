import sqlite3
import dotenv
import os

dotenv.load_dotenv(dotenv.find_dotenv())

def conn():
    return sqlite3.connect(os.getenv('db_database'))


def findMedicamento(farm):
    line=dict()
    ret=list()
    db = conn()
    mycursor = db.cursor()
    for f in farm:
        cmd = f"SELECT farmaco, detentor, medicamento, concentracao, bula, status FROM `Medicamentos` WHERE farmaco LIKE '%{f}%'"
        mycursor.execute(cmd)
        result=mycursor.fetchall()
        for col in result:
            line['farmaco'] = col[0]
            line['detentor'] = col[1]
            line['medicamento'] = col[2]
            line['concentracao'] = col[3]
            line['bula_link'] = col[4]
            line['status'] = col[5]
            ret.append(line.copy())
            line.clear()

    db.close()
    return ret

def get_farmaco(med):
    result=list()
    db = conn()
    mycursor = db.cursor()
    cmd = f"SELECT DISTINCT farmaco FROM `Medicamentos` WHERE medicamento LIKE '%{med}%' OR farmaco LIKE '%{med}%'"
    mycursor.execute(cmd)
    for res in mycursor.fetchall():
        result.append(res[0])
    db.close()
    return result

def get_meds(name):
    result=list()
    db = conn()
    mycursor = db.cursor()
    cmd = f"SELECT DISTINCT medicamento FROM `Medicamentos` WHERE medicamento LIKE '%{name}%'"
    mycursor.execute(cmd)

    for res in mycursor.fetchall():
        result.append(res[0])

    db.close()
    return result
