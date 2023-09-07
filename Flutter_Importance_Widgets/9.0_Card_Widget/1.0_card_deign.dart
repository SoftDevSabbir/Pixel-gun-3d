import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Widgets'),
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),
            ),



            body:Center(
              child: Card(
                elevation: 15,
                shadowColor: Colors.green,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello World',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                ),
              ),
            )
        )
    );
  }
}
