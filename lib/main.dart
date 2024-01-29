// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:trackcy/screens/Homepage.dart';
// import 'package:trackcy/screens/Message.dart';
// import 'package:trackcy/screens/createScreen.dart';
import 'package:trackcy/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
