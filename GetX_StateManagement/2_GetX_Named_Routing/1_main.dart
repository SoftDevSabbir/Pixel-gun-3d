import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_map/ProductPage.dart';

import 'HomePage.dart';

void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      //home: HomePage(),
      getPages: [
         GetPage(name: '/', page: () => HomePage(),transition: Transition.zoom),
         GetPage(name: '/product', page: () => ProductPage(),transition: Transition.zoom),
      ],
    );
  }
}


