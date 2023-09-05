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
              title: Text('Flutter Button'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Disable'),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {}, child: Text('Enabled')),
                  SizedBox(height: 15),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      label: Text('Enabled'))
                ],
              ),
            )));
  }
}

