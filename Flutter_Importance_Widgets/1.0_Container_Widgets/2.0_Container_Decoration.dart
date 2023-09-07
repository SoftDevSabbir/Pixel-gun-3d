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
    var name=['Sabbir','Abir','Akash','Likhon','RAhul','Danial','Jibon','Rohan','Atik'];
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Container Decoration'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            body:Container(
             // color: Colors.blue.shade100,
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    //borderRadius: BorderRadius.only(topLeft: Radius.elliptical(100, 50))
                   // borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.elliptical(60,78))
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(color: Colors.black,width: 3),
                    //backgroundBlendMode: BlendMode.colorBurn,
                    boxShadow:[
                      BoxShadow(
                        blurRadius: 11,
                        color: Colors.grey,
                        spreadRadius: 11,
                      )
                    ],
                    //  shape: BoxShape.circle, /*shape use korte hole border radious dia jabe na*/
                  )
                  ),

                ),
              ),
            )

        );
  }
}
