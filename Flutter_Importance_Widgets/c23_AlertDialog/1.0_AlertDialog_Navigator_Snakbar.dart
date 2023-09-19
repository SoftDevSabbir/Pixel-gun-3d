import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Create snakbar messege method
  MySnakBar(msg,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),));
  }

  // Create Alert Dialogue methood
  MyAlertDialog(context){
    return showDialog(context: context, builder: (context) => Expanded(child: AlertDialog(
      title: Text('ALert !'),
      content: Text('Are You Sure..?'),
      actions: [
       CupertinoButton(
       onPressed: () { },
       child: TextButton(onPressed: (){
           Navigator.of(context).pop();
         }, child: Text('No')),
       ),
       CupertinoButton(
         onPressed: () {},
         child: TextButton(onPressed: (){
           Navigator.of(context).pop();
           MySnakBar("Delete Successful", context);
         }, child: Text('Yes')),
       ),
      ],
    )),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              MyAlertDialog(context);
            },
            child: const Text("Delete File"),
          ),
        ));
  }
}
