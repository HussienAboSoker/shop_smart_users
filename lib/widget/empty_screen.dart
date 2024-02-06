import 'package:flutter/material.dart';

import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class EmptySceen extends StatelessWidget {
  const EmptySceen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath});
  final String title;
  final String subtitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 200,
          width: 200,
        ),
        const CustomTitle(
          label: "whoops",
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        CustomTitle(
          label: title,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        CustomsubTitle(label: subtitle),
      ],
    );
  }
}
