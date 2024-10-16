import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class policies extends StatelessWidget {
  // String c ="Download the App: The stockwise prediction app should be downloaded first from the Google Play store.Create an Account: After downloading the programme, you'll need to do so. Typically, this entails giving your name, email address,and password";
  String content =
      "Download the App: The stockwise prediction app should be downloaded first from the Google Play store. Create an Account: After downloading the programme, you'll need to do so. Typically, this entails giving your name, email address,and password.Choose Stocks: You must choose the stocks you wish to monitor or forecast. While some apps might only let you add pre-selected stocks, others might let you add your own.Data analysis: Our software will provide forecasts about the future performance of the chosen stocks using algorithms and data analysis. This information may be examined to aid in making wise investing choices. After making an investment choice based on the app's forecasts, it's crucial to keep an eye on the stock's performance. You may use this to decide whether to hold, sell, or purchase further shares. You may change a number of settings in our app, including the notification options and the frequency of updates. These parameters can be changed to further customise the app.Select Stocks: You  need to select the stocks that you want to track or predict. Some apps may have pre-selected stocks, while others may allow you to add your own Analyze Data: Our app will use algorithms and data analysis to provide predictions on the future performance of the selected stocks. This data can be analyzed to help make informed investment decisions. Monitor Performance: Once you have made an investment decision based on the app's predictions, it's important to monitor the stock's performance. This will help you determine whether to hold, sell, or buy more shares. Adjust Settings: Our app has various settings that you can adjust, such as notification settings or the frequency of updates. Adjusting these settings can help you better tailor the app to your needs." ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to use?"),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ReadMoreText(
            content,
            trimLines: 3,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: " Show More ",
            trimExpandedText: " Show Less ",
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            style: TextStyle(
              fontSize: 16,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}