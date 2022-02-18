import 'package:flutter/material.dart';

class ColorUtil {
  static Color parseRGBA(String? rgba) {
    if (rgba == null) {
      return Colors.transparent;
    }
    try {
      var rgbaValues =
          rgba.split('(').last.split(')').first.split((',')).map((e) => e.trim()).toList();
      return Color.fromARGB(
          int.parse(rgbaValues[0]),
          int.parse(
            rgbaValues[1],
          ),
          int.parse(rgbaValues[2]),
          int.parse(rgbaValues[3]));
    } catch (e) {
      return Colors.transparent;
    }
  }
}
