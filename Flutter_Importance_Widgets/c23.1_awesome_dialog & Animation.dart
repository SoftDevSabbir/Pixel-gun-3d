import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Awesome Dialogue'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    /// At first we need use a package : awesome_dialog: ^3.2.0


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           AnimatedButton(
             text: "Warning Button",
             color: Colors.blue,
             pressEvent: (){
             AwesomeDialog(context: context,
               dismissOnTouchOutside: false,
             dialogType: DialogType.warning,
               title: "Warning!",
               desc: "Something went wrong",
               btnCancelOnPress: (){},
               btnOkOnPress: (){},
               animType: AnimType.topSlide,
               showCloseIcon: true,
             ).show();
           },),

            const SizedBox(height: 16),
            AnimatedButton(
              text: "Error Dialogue",
              color: Colors.grey,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                    dismissOnTouchOutside: false,
                  title: "Error",
                  desc: "Some Error Occurred",
                  dialogType: DialogType.error,
                  animType: AnimType.bottomSlide,
                  btnOkOnPress: (){},
                  btnOkIcon: Icons.cancel,
                  btnOkColor: Colors.red

                ).show();
              },

            ), const SizedBox(height: 16),
            AnimatedButton(
              text: "Success Dialogue",
              color: Colors.green,
              pressEvent: (){
                AwesomeDialog(
                  dismissOnTouchOutside: false,
                  //customHeader: Text("Done"),
                  barrierColor: Colors.white.withOpacity(.5),
                  isDense: true,
                  context: context,
                  title: "Success",
                  desc: "Operation Successfully done",
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  btnOkOnPress: (){},
                ).show();
              },

            ),
          ],
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
