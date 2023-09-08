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
  List arrcolors = [
    Colors.amber,
    Colors.cyanAccent,
    Colors.cyan,
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.yellow,
    Colors.amber,
    Colors.cyanAccent,
    Colors.cyan,
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.yellow
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Flutter Widgets"),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(color: arrcolors[0],),
            Container(color: arrcolors[1],),
            Container(color: arrcolors[2],),
            Container(color: arrcolors[3],),
            Container(color: arrcolors[4],),
            Container(color: arrcolors[5],),
            Container(color: arrcolors[6],),
            Container(color: arrcolors[7],)
          ],
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}
