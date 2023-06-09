#!/bin/sh
# -*- coding: utf-8 -*-
#sudo -u postgres flask run << EOF

import psycopg2
import random
import sys, math, pickle, json
import pandas as pd
from flask import Flask

# load
with open('column_transform.pkl', 'rb') as f:
    pre_cat = pickle.load(f)

with open('model.pkl', 'rb') as f:
    polynomial_regression_model = pickle.load(f)

# Connect to the postgres DB
conn = psycopg2.connect("dbname=hats user=postgres")

# Open a cursor to perform database operations
cursor = conn.cursor()


# with open('flat3.json', 'r', encoding="utf-8") as input_file:
#   flat_json = input_file.read()
# flat = json.loads(flat_json)
  
def predict_flat_price (flat_json):
  flat = json.loads(flat_json)
  df =  pd.DataFrame(flat, index = [0])    
  X = df.iloc[:, list(range(2,7))]

  X = pre_cat.transform(X)
  res = polynomial_regression_model.predict(X)
  return json.dumps({'price' : res[0]}) 
  
def address2flat_json(address_string):
  cursor.execute(f"SELECT * FROM flats WHERE address LIKE '%{address_string}%'")
  columns = list(cursor.description)
  records = cursor.fetchall()
  flat_tuple = records[0]
  flat = {}
  for i, col in enumerate(columns):
    flat[col.name] = flat_tuple[i]
    flat_json = json.dumps(flat, indent = 2, ensure_ascii = False)
  return flat_json

def relative_error(x, y):
  return math.fabs(x - y)/x

def jsons2html(flat_json, price_json):
  page = '\n<p>Оцениваемая квартира:</p>\n'
  page += flat_json
  page +=  '\n<p>Предсказанная цена:</p>\n'
  page += price_json
  flat = json.loads(flat_json)
  pp = json.loads(price_json)['price']
  page += '<p>Относительная погрешность равна {:2.2%}.</p>'.format(relative_error(flat['price'], pp))
  return page

app = Flask(__name__)
@app.route('/')
def index():
  page = '''
<!DOCTYPE html>
<html>
  <head>
    <title>Real estate (Magnitogorsk) : prices prediction </title>
    <!-- <meta name="description" content="Belka Digital test">  -->
    <!-- <meta name="keywords" content="HTML, CSS, JavaScript">  -->
    <!-- <meta name="author" content="Evgeni Trifonov">  -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>

  <body>
  <h1>Оценка квартир Магнитогорска</h1>
  <p>
  На основе математической модели предсказываются цены квартир. <br>
  Средняя относительная погрешность   составляет 7.5 %.
  </p>
  <p>Показываются входной и выходной JSON-объекты.</p>
  <pre>
'''
  for addr in ['Комсомольская, 25', 'Ленина пр-т, 86', '50-летия Магнитки, 31']:
    print(addr)
    flat_json = address2flat_json(addr)
    price_json = predict_flat_price(flat_json)
    page += jsons2html(flat_json, price_json)
    print(flat_json)
    print( price_json)
  page += '''  
  </pre>
  </body>
</html>
'''
  return page

if __name__ == '__main__':
    app.run(host="localhost", port=int(os.environ.get("PORT", 5000)), debug=True)
