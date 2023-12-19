from flask import Flask, jsonify, request
import dotenv
import os
import main


dotenv.load_dotenv(dotenv.find_dotenv())
app = Flask(__name__)

@app.route('/getGeneric/<med>', methods=['GET'])
def get_generic(med):
    farm = main.get_farmaco(med)
    meds = main.findMedicamento(farm)
    return jsonify(meds)

@app.route('/getMedicineNames/<name>', methods=['GET'])
def medicine_names(name):
    return jsonify(main.get_meds(name))

app.run(host=os.getenv('app_host'), port=os.getenv('app_port'), debug=True)
