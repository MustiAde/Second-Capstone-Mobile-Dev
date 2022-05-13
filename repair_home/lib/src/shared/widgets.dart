import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';

var customBoxDecor = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: lightAsh,
      blurRadius: 3.0,
      spreadRadius: 3.0,
      offset: Offset(3, 5),
    )
  ],
);

var inputTextDecoration = InputDecoration(
  hintStyle: const TextStyle(
    color: textColor2,
    fontWeight: FontWeight.w500,
  ),
  filled: true,
  fillColor: Colors.white,
  focusColor: Colors.white,
  hoverColor: Colors.white,
  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
  disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
);
