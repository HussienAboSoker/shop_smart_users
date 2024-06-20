import 'package:flutter/material.dart';

class CustomsubTitle extends StatelessWidget {
  const CustomsubTitle({
    super.key,
    required this.label,
    this.fontSize = 14,
    // this.decoration=Decoration,
    this.fontWeight = FontWeight.bold,
    this.maxlines = 2,
    this.color,
  });
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final int maxlines;
  final Color? color;
  // final Color color;
  //final Decoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,

        // decoration: decoration,
      ),
    );
  }
}
