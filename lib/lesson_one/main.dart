import 'package:flutter/material.dart';
import 'package:flutter_demo/lesson_one/home/home.dart';
import 'package:flutter_demo/lesson_one/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        homePageRoutes: (context) => const MyHomePage(),
        loginPageRoutes: (context) => const LoginPage(),
      },
    );
  }
}
