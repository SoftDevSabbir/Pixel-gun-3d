import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});
  
  //snakbar methood
  MySnakBar(msg,context){
     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  var MyItem = [
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU4cXYbxLC5LU7i-9tjPQBxSAszrI1ZJCctg&usqp=CAU","tittle":"Photo-1"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ZNus26cImi0EkSyzjxSIKjgILsc8lbExjg&usqp=CAU","tittle":"Photo-2"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThddPBu4Y7Z_msmV_fE_HXLS5QG4IXJaj5aw&usqp=CAU","tittle":"Photo-3"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAtxqSrBSeFoj-zXpQdUjxqhLJU86mkhndwg&usqp=CAU","tittle":"Photo-4"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjGEIKf5RT-lxMxx_qOrK4opqQMOecvvGn9w&usqp=CAU","tittle":"Photo-5"
    },   {
      "img":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg","tittle":"Photo-6"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
          centerTitle: true,
        ),
        body:ListView.builder(itemCount: MyItem.length,itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            MySnakBar("Picture $index Clicked!", context);
          },
          child: Container(
            margin: EdgeInsets.all(20),
            height: 200,
            width: double.infinity,
            child: Image.network(MyItem[index]["img"]!,fit: BoxFit.fill,),
          ),
        ),));
  }
}
