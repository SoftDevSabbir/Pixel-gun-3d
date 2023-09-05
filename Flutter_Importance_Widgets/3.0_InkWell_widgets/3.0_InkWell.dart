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
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('on Tap clicked!!'),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {},
                    ),
                  ));
                },
                onDoubleTap: () {    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Double Taped!!'),
                  action: SnackBarAction(
                    label: 'undo',
                    onPressed: () {},
                  ),
                ));},
                onLongPress: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('on LongPressed!!'),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {},
                    ),
                  ));
                },
                child: Container(
                  child: Center(child: Text("Tap Here!",style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,
                  ),)),
                  height: 200,
                  width: 300,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            )));
  }
}

