import 'package:flutter/material.dart';
//import 'package:f';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: Expandeds(),
    );
  }
}
class Expandeds extends StatefulWidget {
  const Expandeds({Key? key}) : super(key: key);

  @override
  State<Expandeds> createState() => _ExpandedsState();
}

class _ExpandedsState extends State<Expandeds> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ));
  }
}
