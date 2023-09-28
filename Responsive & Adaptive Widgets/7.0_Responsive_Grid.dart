import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';
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
// Package inallation: responsive_grid: ^2.4.4  or  $ flutter pub add responsive_grid
// this widgets is mostly need for web and desktop application building

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive UI"),
        ),
        body:SingleChildScrollView(
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.deepOrange,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.grey,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.blue,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.yellow,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.amber,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.redAccent,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.purple,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.orange,
                  ) ),
              ResponsiveGridCol(
                  xl: 2,
                  lg: 3,
                  md: 4,
                  sm: 6,
                  xs: 12,
                  child:Container(
                    height: 100,
                    color: Colors.greenAccent,
                  ) ),
            ],

          ),
        )
       );
  }
}

