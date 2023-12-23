import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


import 'CounterStateController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    //dependency injection
    final CounterStateController C =Get.put(CounterStateController());
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Obx(()=>Text("Count: ${C.count}"))
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            C.increment();
          },
          backgroundColor: Colors.green,
          child: Icon(Icons.add)),
    );
  }
}
