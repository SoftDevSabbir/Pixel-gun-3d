import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("GetX Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("Hallo", "get Morgan Sabbir",
                      backgroundColor: Colors.green,
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.red,
                      colorText: Colors.white,
                      borderRadius: 2,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      isDismissible: false,
                      duration: Duration(seconds: 3),
                      animationDuration: Duration(microseconds: 3500));
                },
                child: Text("Get SnackBar"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                onPressed: () {
                  Get.defaultDialog(
                      backgroundColor: Colors.green,
                      title: "Alert !",
                      titlePadding: EdgeInsets.all(10),
                      titleStyle: TextStyle(color: Colors.white),
                      middleText: "Once delete, you can't get it back",
                      middleTextStyle: TextStyle(color: Colors.white),
                      textConfirm: "Confirm",
                      textCancel: "Cancel",
                      confirmTextColor: Colors.white,
                      cancelTextColor: Colors.white,
                      radius: 4,
                      onCancel: () => {Get.back(closeOverlays: true)},
                      onConfirm: () => {Get.back(closeOverlays: true)},
                      barrierDismissible: false,
                      content: Column(
                        children: [
                          Text("Hello 1"),
                          Text("Hello 2"),
                          Text("Hello 3"),
                          Text("Hello 4"),
                        ],
                      ));
                },
                child: Text("Get Dialouge Box"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.cyan,
                        child: Column(
                          children: [
                            Text("ABCD"),
                            Text("ABCD"),
                            Text("ABCD"),
                            Text("ABCD"),
                            Text("ABCD"),
                            ElevatedButton(
                                onPressed: () {
                                  Get.back(closeOverlays: true);
                                },
                                child: Text("Close")),
                          ],
                        ),
                      ),
                      enableDrag: false,
                      isDismissible: true,
                      barrierColor: Colors.amberAccent.withOpacity(0.5));
                },
                child: Text("Get Bottom Sheet"),
              ),
            ],
          ),
        ));
  }
}
