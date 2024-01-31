import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle(
      {super.key,
      required this.title,
      required this.function,
      required this.imagePath});
  final String title;
  final Function function;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(title),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_right),
        onPressed: function(),
      ),
    );
  }
}
