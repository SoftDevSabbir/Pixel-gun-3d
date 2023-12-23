import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map/HomePage.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Get.to(ProductPage());
            //Get.off(HomePage());
            Get.offAll(HomePage());
            },
          child: Text("Button-2"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
    );
  }
}
