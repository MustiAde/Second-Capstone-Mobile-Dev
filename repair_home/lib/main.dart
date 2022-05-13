import 'package:flutter/material.dart';
import 'package:repair_home/src/screens/authenticate/login_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
