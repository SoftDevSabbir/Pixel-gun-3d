import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double customOpacity=0.1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Container'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TweenAnimationBuilder(
                    onEnd: () {
                      setState(() {
                        customOpacity=1;
                      });
                    },
                    curve: Curves.bounceOut,
                    tween: Tween(begin: 80, end: 300.0),
                    duration: Duration(seconds: 10),
                    builder: (context, dynamic value, child) {
                      return Icon(
                        Icons.flash_on,
                        color: Colors.red,
                        size: value,
                      );
                    },
                  ),
                  AnimatedOpacity(
                     duration: Duration(seconds: 2),
                    opacity: customOpacity,
                    child: Text(
                      "Energizer",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
                    ),
                  )
                ],
              ),
            )));
  }
}
