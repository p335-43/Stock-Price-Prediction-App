import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<double>> getStockPredictions(List<double> stockData) async {
  final response = await http.post(
    Uri.parse('http://your-server-url.com/predict'),  // Replace with your Flask API URL
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'data': stockData,
    }),
  );

  if (response.statusCode == 200) {
    // Parse the response as a list of predictions
    final data = jsonDecode(response.body);
    List<double> predictions = List<double>.from(data['predictions']);
    return predictions;
  } else {
    throw Exception('Failed to get predictions');
  }
}
