import math, json, requests

def relative_error(x, y):
  return math.fabs(x - y)/x


for f in ['flat1.json', 'flat2.json', 'flat3.json']:
  with open(f, 'r') as fp:
    flat_json = fp.read()
    fprice = json.loads(flat_json)['price']
  
    res = requests.post('http://localhost:5000/api/predict', json = flat_json)
    price = res.json()['price']

    #    print(res.json())

    output = '\nВходящий JSON квартиры:\n'
    output += flat_json
    output += '\n\nJSON с предсказанной ценой на выходе:\n'
    output += json.dumps(res.json())
    output += '\n\nОтносительная погрешность равна {:2.2%}.'.format(relative_error(fprice, price))
    print(output)

