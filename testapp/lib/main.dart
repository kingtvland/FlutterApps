// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp/home.dart';
import 'package:testapp/scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QRViewExample(),
    );
  }
}
