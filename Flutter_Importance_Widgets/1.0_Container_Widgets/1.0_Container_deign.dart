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
        title: Text('Flutter Container'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.orange,fontSize: 35,fontWeight: FontWeight.bold),
      ),



         body: Center(
           child: Container(
             height: 300,
             width: 300,
             color: Colors.orange,
             child:Center(child: Text("This is container",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))

           ),
         )
    )
    );
  }
}

