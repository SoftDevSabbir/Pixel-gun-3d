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
     var arrName=['Sabbir','likhon','Kiron','Adib','Tonmoy','Abir','Hasan'];
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Container'),
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.orange,fontSize: 35,fontWeight: FontWeight.bold),
            ),



            body:Center(
              child: Container(
                decoration: BoxDecoration(
                 //  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black,width: 3),
                  shape: BoxShape.circle
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/me.png'),
                  minRadius: 20,
                  maxRadius: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 170.0),
                    child: Text("Name",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
              ),
            )
        )
    );
  }
}
