import 'package:flutter/material.dart';
import 'package:repair_home/src/shared/constants.dart';

var customBoxDecor = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: textFieldShadow,
      blurRadius: 3.0,
      offset: Offset(6, 4),
    )
  ],
);

var inputTextDecoration = InputDecoration(
  hintStyle: const TextStyle(
    color: bBlackHalf,
    fontWeight: FontWeight.w500,
    fontSize: 14.0
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
