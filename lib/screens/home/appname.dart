import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppName extends StatelessWidget {
  const AppName({super.key,this.fontsize=20});
  final  double   fontsize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period:const Duration(seconds: 10),
      baseColor: Colors.purple,
      highlightColor: Colors.red
      ,child: Text("Shop Smart",style: TextStyle(fontSize: fontsize),));
  }
}