import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

// use this must need add this package on puspec.yaml
// Package inallation:  flutter_bootstrap: "^2.0.0"
// this widgets is mostly need for web and desktop application building

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive UI"),
        ),
        body:SingleChildScrollView(
          child:BootstrapContainer(
            fluid: true,
            children: [
              BootstrapRow(
                height: 100,
                children: [
                  BootstrapCol(
                     sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.green,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.redAccent,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.tealAccent,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.deepPurpleAccent,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.amber,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.blue,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.black,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.orange,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.lightGreenAccent,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.lightBlueAccent,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.grey,
                        height: 100,
                      ) ),
                  BootstrapCol(
                      sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                      child:Container(
                        color: Colors.orange,
                        height: 100,
                      ) ),

                ],
              )
            ],
          )
        )
       );
  }
}

