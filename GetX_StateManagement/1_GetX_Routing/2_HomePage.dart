import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map/ProductPage.dart';

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
                //Get.to(ProductPage());
                //Get.off(ProductPage());
               Get.offAll(ProductPage());
              },
              child: Text("Button-1"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        )));
  }
}
