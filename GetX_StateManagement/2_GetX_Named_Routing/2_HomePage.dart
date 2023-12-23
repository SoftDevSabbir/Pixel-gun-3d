import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Home Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You are now stay Home Page"),
            ElevatedButton(
              onPressed: () {
                //Get.toNamed("/product");
                //Get.offNamed('/product');
                Get.offAllNamed('/product');

              },
              child: Text("Button-1"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        )));
  }
}
