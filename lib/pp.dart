import 'dart:ui';

import 'package:flutter/material.dart';

class police extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Predicted Graph"),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
    child: Image.network(
      'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_700/MTc0NjQwMjYwOTkzNTI1NzA1/learn-python-for-trading-and-investing.png',
      fit: BoxFit.cover,
      width: 400,
      height:400,
    )
        ),
      ),
    );
  }
}