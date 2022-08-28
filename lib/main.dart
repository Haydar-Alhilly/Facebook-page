// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sippar_app/main_page.dart';
import 'package:sippar_app/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash());
  }
}
