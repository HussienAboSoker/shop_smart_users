import 'package:flutter/material.dart';

class CustomHeart extends StatelessWidget {
  const CustomHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}
