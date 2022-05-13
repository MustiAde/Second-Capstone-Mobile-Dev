import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueBlue,
      alignment: Alignment.center,
      child: Image.asset('assets/blue_logo.png'),
    );
  }
}
