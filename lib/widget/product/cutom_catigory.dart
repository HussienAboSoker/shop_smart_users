
import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/searchscreen.dart';

import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';

class Cutomcatigory extends StatelessWidget {
  const Cutomcatigory({super.key, required this.image, required this.name});
  final String name, image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchScreenPage.nameSrceen,
            arguments: name);
      },
      child: Column(
        children: [
          Image.asset(
            image,
            height: size.height * 0.1,
            width: size.width * 0.1,
          ),
          CustomsubTitle(
            label: name,
            maxlines: 1,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
