import 'dart:developer';

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _textEditingController;
  @override
  //to initalize controller
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  //for cleat buffer data when go to anther screen
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              //note when you Clear()you dont must put set state
              //this handled by flutter team
              _textEditingController.clear();
            },
            icon: const Icon(
              Icons.delete,
              color: Color.fromARGB(205, 209, 44, 33),
            ),
          ),
          prefixIcon: const Icon(
            Icons.search,
          ),
          hintText: 'Search...',
          //   border: InputBorder.none,
        ),
        onChanged: (value) {
          log(value);
        },
        onSubmitted: (value) {
          log(value);
        },
      ),
    );
  }
}
