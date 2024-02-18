import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class CutomFancyImage extends StatelessWidget {
  const CutomFancyImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FancyShimmerImage(
      boxDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      imageUrl: "assets/images/sahs.jpeg",
      width: double.infinity,
      height: size.height * 0.2,
    );
  }
}
