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
        body:Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
           top: 80,
                left: 41,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.pink,
                ),
              ),
              Positioned(
           top: 100,
                left: 60,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.cyanAccent,
                ),
              ),
              Positioned(
           top: 120,
                left: 79,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.amberAccent,
                ),
              ),
              Positioned(
           top: 140,
                left: 100,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
        )
      ),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}
