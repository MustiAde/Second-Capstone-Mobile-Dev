import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1F319D),
      alignment: Alignment.center,
      child: Image.asset('assets/blue_logo.png'),
    );
  }
}
