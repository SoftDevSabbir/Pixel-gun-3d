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
      debugShowCheckedModeBanner: false,
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 8, child: Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        bottom: TabBar(
          isScrollable:true,
          tabs: [
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.search),text: "Search",),
            Tab(icon: Icon(Icons.media_bluetooth_off),text: "Media",),
            Tab(icon: Icon(Icons.alarm),text: "Alarm",),
            Tab(icon: Icon(Icons.notifications_active),text: "Notice",),
            Tab(icon: Icon(Icons.wallet),text: "Balance",),
            Tab(icon: Icon(Icons.person),text: "Person",),
            Tab(icon: Icon(Icons.settings),text: "Setting",),
          ],
        ),
      ),
    body:   TabBarView(
      children: [
        Home(),
        Search(),
        Media(),
        Alarm(),
        Notice(),
        Balance(),
        Person(),
        Setting(),

      ],
    ),)
    );
  }
}



class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Home Page")),
  );
  }

}
class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Search Page")),
  );
  }

}
class Media extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Media Page")),
  );
  }

}
class Alarm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Alarm Page")),
  );
  }

}
class Notice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Notice Page")),
  );
  }

}
class Balance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Balance Page")),
  );
  }

}
class Person extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Person Page")),
  );
  }

}
class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Center(child: Text("Setting Page")),
  );
  }

}
