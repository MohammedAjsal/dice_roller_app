// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_app/gradient_container.dart';

// execution point? entry point of the app
void main() {
//runapp is the root app of the app which is an inbuilt function in flutter which will call here,
  runApp(
// const keyword helps the app performance memory redundancy
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 64, 24, 133),
        body: GradientContainer(Colors.deepPurple, Colors.red),
        // GradientContainer([Colors.deepPurple, Colors.red])
      ),
    ),
  );
}
