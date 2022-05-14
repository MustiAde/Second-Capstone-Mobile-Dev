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
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(10.0)),
  border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(10.0)),
);
