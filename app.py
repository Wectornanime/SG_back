from flask import Flask, jsonify, request
from flask_cors import CORS
import dotenv
import os
import main


dotenv.load_dotenv(dotenv.find_dotenv())
app = Flask(__name__)
CORS(app)

@app.route('/getGeneric/<med>', methods=['GET'])
def get_generic(med):
    try:
        farm = main.get_farmaco(med)
        meds = main.findMedicamento(farm)
    except:
        meds = ''
    return jsonify(meds)

@app.route('/getMedicineNames/<name>', methods=['GET'])
def medicine_names(name):
    return jsonify(main.get_meds(name))

# app.run(host=os.getenv('app_host'), port=os.getenv('app_port'), debug=True)
