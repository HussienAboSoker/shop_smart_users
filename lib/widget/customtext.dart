import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.label,
     this.fontSize=14,
    // this.decoration=Decoration,
     this.fontWeight=FontWeight.bold,  
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
        fontSize: 14,
        fontWeight: FontWeight.normal,
       // decoration: decoration,
       
      ),
    );
  }
}
