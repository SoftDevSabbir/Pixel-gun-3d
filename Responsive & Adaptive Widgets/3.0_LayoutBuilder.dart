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
      body: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth>600){
          return Container(height: 400,width: 400,color: Colors.amber,);
        }
        else{
          return Container(height: 200,width: 200,color: Colors.green,);
        }
      },)
    );
  }

}
