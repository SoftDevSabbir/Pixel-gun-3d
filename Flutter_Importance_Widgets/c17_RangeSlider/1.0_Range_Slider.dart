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
}

class _MyHomePageState extends State<MyHomePage> {
RangeValues values= RangeValues(0, 100);

  Widget build(BuildContext context) {
    RangeLabels labels =RangeLabels(values.start.toString(), values.end.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Flutter Widgets"),
        ),
        body:Center(
         child: RangeSlider(
           values: values,
           labels: labels,
           activeColor: Colors.blueAccent,
           inactiveColor: Colors.blueAccent.shade100,
           divisions: 10,
           min: 0,
           max: 100,
           onChanged: (newvalue) {
             values=newvalue;
             setState(() {

             });
           },
         ),
        )
      ),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}
