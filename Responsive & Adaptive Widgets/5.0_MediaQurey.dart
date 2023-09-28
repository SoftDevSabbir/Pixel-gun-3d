import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';

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
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   //Size size=MediaQuery.of(context).size;   //--> It's old system
    Size size=MediaQuery.sizeOf(context);     //--> It's flutter 10.8 new update system
   print(size);
   print(size.height);
   print(size.width);
   print(size.aspectRatio);
   print(size.flipped);
   Orientation orientation=MediaQuery.orientationOf(context);
   print(orientation);
 List<DisplayFeature>displayFeatures= MediaQuery.displayFeaturesOf(context);
 print(displayFeatures);
 var displayRatio=MediaQuery.devicePixelRatioOf(context);
 print(displayRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI"),
      ),
      body://Text("screen Width=$width)"),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Display Height: ${size.height}"),
            SizedBox(height: 6),
            Text("Display Width: ${size.width}"),
            SizedBox(height: 6),
            Text("Display AspectRatio: ${size.aspectRatio.toStringAsFixed(3)}"),
            SizedBox(height: 6),
            Text("Display Flipped: ${size.flipped}"),
            SizedBox(height: 6),
            Text("Display DisplayFeature: ${displayFeatures}"),
            SizedBox(height: 6),
            Text("Display displayRatio: ${displayRatio}"),
          ],
        ),
      )
    );
  }

}
