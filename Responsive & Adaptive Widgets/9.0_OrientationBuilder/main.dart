import 'package:flutter/material.dart';

import 'LandscapeLayout.dart';
import 'PortraitLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return Center(
              child: orientation == Orientation.portrait
                  ? PortraitLayout()
                  : LandscapeLayout(),
            );
          },
        ));
  }
}
