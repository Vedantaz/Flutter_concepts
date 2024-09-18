import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle mTextStyle24() {
  return const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: 'FontMain',
  );
}

TextStyle mTextStyle12() {
  return const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: 'FontMain',
  );
}

TextStyle mColorStyle12(
    {Color TextColor = Colors.black,
    FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
    fontSize: 12,
    color: TextColor,
  );
}
