import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
void initState(){
 super.initState();
 // Timer(Duration(seconds: 3),(){
 //   reload();
 // });
}
@override
 void reload(){
  setState(() {
    if(isFirst){
      isFirst=false;
    }else{
      isFirst=true;
    }
  });
}
  bool isFirst=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutte Widgets'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,),
        ),



        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(seconds: 2),
                firstChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                secondChild: Image.asset('assets/ccc.PNG',
                width: 200,
                height: 400),
                sizeCurve: Curves.fastOutSlowIn,
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceIn,
                crossFadeState: isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
              ElevatedButton(onPressed: (){
                reload();
              }, child: Text('Start Animation')),
            ],
          ),
        )
    );
  }
}
