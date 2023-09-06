import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Scoll View'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 11),
                            height: 200,
                            width: 200,
                            color: Colors.orange,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 11),
                            height: 200,
                            width: 200,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 11),
                            height: 200,
                            width: 200,
                            color: Colors.pink,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 11),
                            height: 200,
                            width: 200,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.pink,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.purple,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.deepOrangeAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      height: 200,
                      width: 400,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            )));
  }
}
