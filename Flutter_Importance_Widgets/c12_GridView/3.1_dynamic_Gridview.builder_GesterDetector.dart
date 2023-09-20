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
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU4cXYbxLC5LU7i-9tjPQBxSAszrI1ZJCctg&usqp=CAU","tittle":"Photo-7"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ZNus26cImi0EkSyzjxSIKjgILsc8lbExjg&usqp=CAU","tittle":"Photo-8"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThddPBu4Y7Z_msmV_fE_HXLS5QG4IXJaj5aw&usqp=CAU","tittle":"Photo-9"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAtxqSrBSeFoj-zXpQdUjxqhLJU86mkhndwg&usqp=CAU","tittle":"Photo-10"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjGEIKf5RT-lxMxx_qOrK4opqQMOecvvGn9w&usqp=CAU","tittle":"Photo-11"
    },   {
      "img":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg","tittle":"Photo-12"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU4cXYbxLC5LU7i-9tjPQBxSAszrI1ZJCctg&usqp=CAU","tittle":"Photo-13"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ZNus26cImi0EkSyzjxSIKjgILsc8lbExjg&usqp=CAU","tittle":"Photo-14"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThddPBu4Y7Z_msmV_fE_HXLS5QG4IXJaj5aw&usqp=CAU","tittle":"Photo-15"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAtxqSrBSeFoj-zXpQdUjxqhLJU86mkhndwg&usqp=CAU","tittle":"Photo-16"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjGEIKf5RT-lxMxx_qOrK4opqQMOecvvGn9w&usqp=CAU","tittle":"Photo-17"
    },   {
      "img":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg","tittle":"Photo-18"
    },
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU4cXYbxLC5LU7i-9tjPQBxSAszrI1ZJCctg&usqp=CAU","tittle":"Photo-19"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ZNus26cImi0EkSyzjxSIKjgILsc8lbExjg&usqp=CAU","tittle":"Photo-20"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThddPBu4Y7Z_msmV_fE_HXLS5QG4IXJaj5aw&usqp=CAU","tittle":"Photo-21"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAtxqSrBSeFoj-zXpQdUjxqhLJU86mkhndwg&usqp=CAU","tittle":"Photo-22"
    },   {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjGEIKf5RT-lxMxx_qOrK4opqQMOecvvGn9w&usqp=CAU","tittle":"Photo-23"
    },   {
      "img":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg","tittle":"Photo-24"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
          centerTitle: true,
        ),
        body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1,

          ),
          itemCount: MyItem.length,itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            MySnakBar(MyItem[index]['tittle'], context);
          },
          child: Container(
            padding: EdgeInsets.all(9),
          height: 200,
            width: double.infinity,
           child: Image.network(MyItem[index]["img"]!,fit: BoxFit.fill,),
          ),
        ),));
  }
}
