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
    var name=['Sabbir','Abir','Akash','Likhon','RAhul','Danial','Jibon','Rohan','Atik','Sabbir','Abir','Akash','Likhon','RAhul','Danial','Jibon','Rohan','Atik'];
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('List View'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            body:ListView.separated(itemBuilder: (context, index) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(name[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(name[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  )
                ],
              );
            }, separatorBuilder: (context, index) {
              return Divider(height: 100,thickness: 3,);
            }, itemCount: name.length)
            )

        );
  }
}
