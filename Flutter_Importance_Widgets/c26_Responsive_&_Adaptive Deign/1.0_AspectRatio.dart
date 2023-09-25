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
      body: Container(
        width: double.infinity,
         height: 300,
        color: Colors.green,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16/9,
          child: Container(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

}

