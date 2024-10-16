import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 16.0),

                  Expanded(
                    child: Text(
                      'Company Profile',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    onPressed: _toggleVisibility,
                  ),
                  SizedBox(width: 16.0),
                ],
              ),
              Visibility(
                visible: _isVisible,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Reliance Industries Limited is engaged in refining, manufacturing of refined petroleum products, petrochemicals, including manufacturing of basic chemicals, fertilizers and nitrogen compounds, plastic and synthetic rubber in primary forms.',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Brands',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 100.0,
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(height: 8.0),
                            Text(
                              'Reliance Retail',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'JIO',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),

                ],

              ),

              SizedBox(height: 32.0),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Peers',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 100.0,
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(height: 8.0),
                            Text(
                              'Indian Oil Corporation Ltd IOC',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Bharat Petroleum Corporation BbCr',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),


                ],

              ),
            ],
            ),
        );
    }
}