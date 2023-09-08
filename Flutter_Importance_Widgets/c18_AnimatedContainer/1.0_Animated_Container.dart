import 'package:flutter/material.dart';
import 'package:untitled3/userinput_formvalidation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag =true;
  // Color bgColor=Colors.blueGrey;
Decoration myDec=BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Flutter Widgets"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width:_width,
                height: _height,
                duration: Duration(seconds: 1),
               // color: bgColor,
                decoration: myDec,
              ),
              ElevatedButton(onPressed: (){
                _height=200.0;
                _width=100.0;
                setState(() {
                  if(flag){
                    _height=200.0;
                    _width=100.0;
                    flag=false;
                    //bgColor=Colors.blueGrey;
                    myDec=BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    );
                  }else{
                    _width=200;
                    _height=100;
                    flag=true;
                    myDec=BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(21)
                    );
                  }

                });
              }, child: Text('Animated'),
                )
            ],
          ),
        )
      ),
    );
    // This trailing comma makes auto-formatting nicer for build metho
  }
}
