import sys, os, math, pickle, json
import pandas as pd
from flask import Flask, request, jsonify

# load
with open('column_transform.pkl', 'rb') as f:
    pre_cat = pickle.load(f)

with open('model.pkl', 'rb') as f:
    polynomial_regression_model = pickle.load(f)
  
def predict_flat_price (flat_json):
  flat = json.loads(flat_json)
  df =  pd.DataFrame(flat, index = [0])    
  X = df.iloc[:, list(range(2,7))]

  X = pre_cat.transform(X)
  res = polynomial_regression_model.predict(X)
  return json.dumps({'price' : res[0]}) 

app = Flask(__name__)

@app.route('/api/predict', methods=['GET', 'POST'])
def predict():
    flat_json = request.json
    price_json = predict_flat_price (flat_json)

    return price_json

if __name__ == '__main__':
    app.run(host="localhost", port=int(os.environ.get("PORT", 5000)), debug=True)
