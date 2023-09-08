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



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Flutter Widgets"),
        ),
        body: Center(

          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.blue,),
            Container(color: Colors.purple,),
            Container(color: Colors.amber,),
            Container(color: Colors.teal,),
            Container(color: Colors.redAccent,),
            Container(color: Colors.blue,),
            Container(color: Colors.greenAccent,),
            Container(color: Colors.amberAccent,),
            Container(color: Colors.yellow,),
            Container(color: Colors.tealAccent,),
            Container(color: Colors.cyanAccent,),
            Container(color: Colors.amber,),
          ],)
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
