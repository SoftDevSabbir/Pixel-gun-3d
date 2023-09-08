import 'package:flutter/material.dart';
import 'package:untitled3/userinput_formvalidation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Flutter Widgets"),
        ),
        body:Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.teal,
              ),
              children: [
                TextSpan(text: 'My ',),
                TextSpan(text: 'name ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey)),
                TextSpan(text: 'is ',style: TextStyle(fontSize: 27,color: Colors.black,)),
                TextSpan(text: 'Likhon',style: TextStyle(fontSize: 35,color: Colors.cyanAccent,)),
              ],

            ),


          ),
        )
      ),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}
