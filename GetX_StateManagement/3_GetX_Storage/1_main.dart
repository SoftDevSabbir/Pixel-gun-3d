import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

## we need to install GetStorage package in project
  
void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProductPage(),

    );
  }
}



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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){GetStorage().write("Name", "Likhon");},
                child: Text("Write Data")),
            ElevatedButton(onPressed: (){
              var name= GetStorage().read("Name");
              Get.snackbar(name, "This is my name",backgroundColor: Colors.green);
            }, child: Text("Read Data")),
            ElevatedButton(onPressed: (){GetStorage().remove("Name");}, child: Text("Erase Data")),
          ],
        ),
      ),
    );
  }
}



