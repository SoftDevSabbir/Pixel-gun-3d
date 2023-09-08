import 'package:flutter/material.dart';
import 'package:untitled3/userinput_formvalidation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
}var myOpacity =1.0;
bool isVisible=true;

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Flutter Widgets"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: myOpacity,
                  duration: Duration(seconds: 2),
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.blueGrey,
                  ),
                ),
                ElevatedButton(onPressed: () {

                  setState(() {

                    if(isVisible){
                      myOpacity=.5;
                      isVisible=false;
                    }else{
                      myOpacity=1;
                      isVisible=true;
                    }

                  });
                }, child: Text('Close')),
              ],
            ),
          )),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}

