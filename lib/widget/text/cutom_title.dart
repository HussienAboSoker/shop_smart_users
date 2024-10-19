import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.label,
    this.fontSize = 14,
    // this.decoration=Decoration,
    this.fontWeight = FontWeight.normal,
    this.maxlines = 1,
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
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        //  color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,

        // decoration: decoration,
      ),
    );
  }
}
