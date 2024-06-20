import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class CutomFancyImage extends StatelessWidget {
  const CutomFancyImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: FancyShimmerImage(
          imageUrl:
              'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
          height: size.height * 0.2,
          width: size.width * 0.2,
        ),
      ),
    );
  }
}
