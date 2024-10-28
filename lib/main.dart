import 'package:flutter/material.dart';
import 'package:quickmedical/Home.dart';
import 'package:quickmedical/cart.dart';

import 'package:quickmedical/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MySplash());
  }
}
