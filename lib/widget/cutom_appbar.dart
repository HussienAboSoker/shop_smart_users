import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Image.asset(ImagePath.shopingCart),
        title:const Text("Search"),
      ) ,
    );
  }
}