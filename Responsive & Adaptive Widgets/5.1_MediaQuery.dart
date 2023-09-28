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
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive UI"),
        ),
        body:Center(child: Text("Hello Flutter",style: HeadLine(context),)),
       );
  }
}


TextStyle? HeadLine(context){
  var width=MediaQuery.sizeOf(context).width;
  if(width<700){
    //mobile
    return TextStyle(
      color: Colors.black,
      fontSize: 20
    );
  }else{
    return TextStyle(
      color: Colors.deepOrange,
      fontSize: 30,
    );
  }
}
