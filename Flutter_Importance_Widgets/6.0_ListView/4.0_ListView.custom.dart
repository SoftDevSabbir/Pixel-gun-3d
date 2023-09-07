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
    final item=List.generate(100, (index) => 'Item No: $index');
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
            body:ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 100,
                  child: Card(
                    color: Colors.orange[100 * (index % 9)],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ),
                  ),
                );
              },
            ))
        )

        );
  }
}
