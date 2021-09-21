import 'package:flutter/material.dart';

import 'screen/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login ui',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: const LandingScreen(),
    );
  }
}
