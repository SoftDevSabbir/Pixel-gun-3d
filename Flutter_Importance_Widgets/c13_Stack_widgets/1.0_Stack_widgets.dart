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
          height: 300,
          width: 300,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow.shade700,
              ) ,
              Positioned(
                left: 21,
                top: 21,
                // bottom: 21,
                // right: 21,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyanAccent
                ),
              ) ,
              Positioned(
                left: 42,
                top: 42,
                // bottom: 21,
                // right: 21,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
              ),
              Positioned(
                left: 63,
                top: 63,
                // bottom: 21,
                // right: 21,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        )
      ),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}
