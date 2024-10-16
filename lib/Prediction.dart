import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_signin/policies.dart';
import 'package:firebase_signin/pp.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


class StockPredictor extends StatefulWidget {
  @override
  _StockPredictorState createState() => _StockPredictorState();
}

class _StockPredictorState extends State<StockPredictor> {
  final TextEditingController _symbolController = TextEditingController();
  Uint8List? _imageData;
  bool _loading = false;

  Future<void> _getStockPredict(String symbol) async {
    setState(() {
      _loading = true;
      _imageData = null;
    });

    final url = Uri.parse('http://127.0.0.1:5000/stock-predict?symbol=$symbol');
    final response = await http.get(url);
    try{
      final response = await http.get(url);}on SocketException catch (e) {
      // handle the connection refused error
    }

    if (response.statusCode == 200) {
      setState(() {
        _loading = false;
        _imageData = response.bodyBytes;
      });
    } else {
      setState(() {
        _loading = false;
        _imageData = null;
      });
      throw Exception('Failed to load stock predict');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stock Predictor'),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _symbolController,
                    decoration: InputDecoration(
                      hintText: 'Enter Stock Symbol',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  // ElevatedButton(
                  //   onPressed: () => _getStockPredict(_symbolController.text),
                  //   child: Text('Predict'),
                  // ),
                  ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  police()),
                      ),
                      child: Text('Predict'),
                      ),
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => policies()),);
                  // },
                  // SizedBox(height: 10),
                  // _loading
                  //     ? CircularProgressIndicator()
                  //     : _imageData != null
                  //     ? Image.memory(_imageData!)
                  //     // : Text('No Image'),
                  // :  Image.network(
                  //   'https://th.bing.com/th/id/OIP.c83PNG7_QZX5t8il6q-ZJgHaDe?pid=ImgDet&rs=1',
                  //   fit: BoxFit.cover,
                  //   width: 200,
                  //   height:200,
                  // )
                  // :Image(
                  //   image: AssetImage('assets/images/abc.jpg'),
                  //   width: 200,
                  //   height: 200,
                  // ),
                ],
              ),
            ),
            ),
        );
    }
}


