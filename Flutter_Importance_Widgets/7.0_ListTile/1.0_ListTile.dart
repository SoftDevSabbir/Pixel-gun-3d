import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     var arrName=['Sabbir','likhon','Kiron','Adib','Tonmoy','Abir','Hasan'];
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Container'),
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.orange,fontSize: 35,fontWeight: FontWeight.bold),
            ),



            body: ListView.builder(itemBuilder: (context, index) {
              return ListTile(leading:Text('$index'),
              title:Text(arrName[index],),
              subtitle: Text('Numbers'),
                trailing: Icon(Icons.add),

              );
            },
            itemCount: arrName.length,
            )

        )
    );
  }
}
