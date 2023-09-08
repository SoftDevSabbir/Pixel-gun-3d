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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Date picker method
    void _showTimePicker() {
    showTimePicker(context: context, initialTime:TimeOfDay.now());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 70,
        toolbarHeight: 100,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Select DAte",
              style: TextStyle(fontSize: 40),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
              onPressed: () {
                _showTimePicker();
              },
              child: Text('Select'))
        ],
      )),
    );
  }
}
