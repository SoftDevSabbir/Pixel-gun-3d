import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/detailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutte Widgets'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,),
        ),


        body:Container(
          child: Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(),));
              },
              child: Hero(
                tag: 'background',
                 child: Image.asset('assets/ccc.PNG',
                 width: 180,
                 height: 180,),
              ),
            ),
          ),
        )
    );
  }
}
