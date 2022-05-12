import 'package:flutter/material.dart';

var customBoxDecor = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade400,
      blurRadius: 3.0,
      spreadRadius: 3.0,
      offset: const Offset(3, 5),
    )
  ],
);

var inputTextDecoration = InputDecoration(
  hintStyle: TextStyle(
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  ),
  fillColor: Colors.white,
  enabledBorder: InputBorder.none,
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
  disabledBorder: InputBorder.none,
);
