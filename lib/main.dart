import 'package:flutter/material.dart';

void main() {
  runApp(const ICCMApp());
}

class ICCMApp extends StatelessWidget {
  const ICCMApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICCM APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Text('Flutter Demo Home Page'),
    );
  }
}
