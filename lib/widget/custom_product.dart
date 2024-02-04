import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key});

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children: [
        FancyShimmerImage(imageUrl:"assets/images/sahs.jpeg",
        width:double.infinity ,
        height:size.height*0.2 ,),
      ],
    );
  }
}