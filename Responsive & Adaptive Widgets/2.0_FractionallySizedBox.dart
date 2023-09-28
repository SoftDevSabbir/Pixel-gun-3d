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
      body: Center(
        child: FractionallySizedBox(
          widthFactor: .5,
          heightFactor: 0.3,
          child: Container(
            color: Colors.deepOrange,
          ),
        ),
      )
    );
  }

}
