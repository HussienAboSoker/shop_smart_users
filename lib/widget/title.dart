import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.label,
     this.fontSize=12,
    // this.decoration=Decoration,
     this.fontWeight=FontWeight.normal,  
  });
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
 // final Color color;
  //final Decoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
      //  color: color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
       // decoration: decoration,
       
      ),
    );
  }
}
