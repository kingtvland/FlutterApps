// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/nav_bar_page/nav_bar_controller.dart';
import 'package:myapp/ui/categories.dart';
import 'package:myapp/ui/mostpopular.dart';
import 'package:myapp/ui/subcategory.dart';

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
      //home: BottomNavController(),
      //home: CategoriesPage(),
      //home: MostPopularPage(),
      home: SubCategoryPage(),
    );
  }
}
