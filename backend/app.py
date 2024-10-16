from flask import Flask, request, jsonify
import pmdarima as pm
import numpy as np

app = Flask(__name__)

model = pm.auto_arima(arima_model.pkl)  

@app.route('/predict', methods=['POST'])
def predict_stock_price():
    data = request.json['data']  
    
  
    forecast = model.predict(n_periods=len(data))  

    return jsonify({
        'predictions': forecast.tolist()  
    })

if __name__ == '__main__':
    app.run(debug=True)
