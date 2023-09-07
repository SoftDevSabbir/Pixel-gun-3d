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
    var name=['Sabbir','Abir','Akash','Likhon','RAhul','Danial','Jibon','Rohan','Atik','Sabbir','Abir','Akash','Likhon','RAhul','Danial','Jibon','Rohan','Atik'];
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
            body:ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(name[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
              );
            },
            itemCount: name.length,
            scrollDirection: Axis.vertical,
            itemExtent: 100,)
            )

        );
  }
}
