import 'package:flutter/material.dart';
import 'package:lavie/screens/HomeLayout_Screen/view/homeLayout_screen.dart';
import 'package:lavie/screens/Login_Screen/view/login_screen_imports.dart';
import 'package:lavie/screens/Recovery_Screen/view/recovery_screens_imports.dart';
import 'package:lavie/screens/Register_Screen/view/register_screen_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
// This trailing comma makes auto-formatting nicer for build methods.
