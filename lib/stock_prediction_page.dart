import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'ml_service.dart';  // Import the service that fetches predictions

class StockPredictionPage extends StatefulWidget {
  @override
  _StockPredictionPageState createState() => _StockPredictionPageState();
}

class _StockPredictionPageState extends State<StockPredictionPage> {
  List<double> predictions = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPredictions();
  }

  // Function to fetch stock price predictions
  Future<void> fetchPredictions() async {
    try {
      List<double> stockData = [1.2, 1.4, 1.3, 1.5, 1.6];  // Example input data
      List<double> result = await getStockPredictions(stockData);  // API call to get predictions
      setState(() {
        predictions = result;
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching predictions: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Price Prediction'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())  // Show loading spinner
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: LineChartWidget(predictions: predictions),  // Pass predictions to chart
            ),
    );
  }
}

class LineChartWidget extends StatelessWidget {
  final List<double> predictions;

  LineChartWidget({required this.predictions});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: true),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            axisNameWidget: Text('Days'),  // X-axis label
            sideTitles: SideTitles(showTitles: true),
          ),
          leftTitles: AxisTitles(
            axisNameWidget: Text('Price'),  // Y-axis label
            sideTitles: SideTitles(showTitles: true),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: predictions.asMap().entries.map((e) {
              return FlSpot(e.key.toDouble(), e.value);  // Map predictions to chart spots
            }).toList(),
            isCurved: true,  // Smooth the line
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: true, colors: [Colors.blue.withOpacity(0.3)]),
          ),
        ],
      ),
    );
  }
}
