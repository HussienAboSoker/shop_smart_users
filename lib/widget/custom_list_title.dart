import 'package:flutter/material.dart';

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
      leading: Image.asset(
        imagePath,
        height: 20,
        width: 20,
      ),
      title: Text(title),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_right),
        onPressed: function(),
      ),
    );
  }
}
