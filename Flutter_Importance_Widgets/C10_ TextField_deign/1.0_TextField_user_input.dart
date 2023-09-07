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
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Widgets'),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            body: Center(
              child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                                width: 3,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.greenAccent.shade100,
                                width: 1.7,
                              )),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.black45,
                              )),
                          filled: true,
                          suffixText: "Write Email",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.orange,
                          ),
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.deepOrange, width: 11))),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(

                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            color: Colors.orange,
                            onPressed: () {},
                          ),
                          suffixText: 'Password',filled: true,
                          prefixIcon: Icon(Icons.key,color: Colors.black45,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.greenAccent.shade100,
                              width: 1.7
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.deepOrange,
                              width: 3
                            )
                          ),
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.deepOrange))),
                    ),
                  ],
                ),
              ),
            )));
  }
}
