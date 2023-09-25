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
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex:3,child: Container(color: Colors.grey,)),
          Expanded(flex:2 ,child: Container(color: Colors.deepOrange,)),
          Expanded(flex:1, child: Container(color: Colors.tealAccent,)),
          Expanded(flex:2, child: Container(color: Colors.yellow,)),
        ],
      )
    );
  }

}
