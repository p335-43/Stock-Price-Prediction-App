# Stock Price Prediction App

![Stock Price Prediction](https://img.shields.io/badge/Flutter-Stock%20Prediction-blue) ![License](https://img.shields.io/github/license/p335-43/Stock-Price-Prediction-App)

## Overview
The **Stock Price Prediction App** is a mobile application built with **Flutter** that leverages a machine learning model to forecast stock prices. The app integrates a Flask-based API serving a trained ARIMA model to provide real-time stock price predictions. Users can visualize the predicted stock trends on an interactive line chart, making it easy to understand and analyze future stock movements.

## Features
- **Machine Learning Integration**: The app uses an ARIMA model, deployed through a Flask API, to predict future stock prices based on historical data.
- **Cross-Platform**: The app is developed using Flutter and runs on both Android and iOS platforms.
- **Visualizations**: Predicted stock prices are displayed on a dynamic, easy-to-understand line chart for better analysis.
- **Real-Time Data**: Fetches the latest stock data and provides future predictions with a simple, user-friendly interface.

## Technology Stack
- **Flutter**: For building the cross-platform mobile app.
- **Python**: To develop and train the ARIMA model for stock prediction.
- **Flask**: To deploy the machine learning model as an API.
- **Dart**: The programming language used for Flutter app development.
- **ARIMA Model**: A time-series forecasting model for predicting future stock prices.


## Installation

### Prerequisites
- Flutter SDK installed (https://flutter.dev/docs/get-started/install)
- Python installed (for the backend API)
- Flask and ARIMA-related dependencies

### Steps to Run the App
Backend Setup (API): Navigate to the backend directory containing the ARIMA model and Flask API:


cd backend

Install the required Python dependencies:


pip install -r requirements.txt

Run the Flask API:


python app.py

Frontend (Flutter App): Navigate to the Flutter project directory:


cd flutter_app

Fetch the necessary Flutter dependencies:

flutter pub get

Run the Flutter app:


flutter run




1. **Clone the repository**:
   ```bash
   git clone https://github.com/p335-43/Stock-Price-Prediction-App.git
