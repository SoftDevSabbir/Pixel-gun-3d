import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.orientationOf(context);
    // print(orientation),
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive UI"),
        ),
        body:LayoutBuilder(builder: (context, constraints) {
          if(
          constraints.maxWidth>1000
          ){
            return Center(child: Text("Too Big Screen"));
          }else{return OrientationBuilder(builder: (context, orientation) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(orientation==Orientation.portrait?'Portrait':'Lanscape')),
              ],
            );
          },);}
        },)
       );
  }
}
