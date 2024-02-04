import 'dart:developer';

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
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
    _textEditingController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
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
                icon: const Icon(Icons.delete)),
            prefixIcon: const Icon(Icons.search),
            hintText: 'Search...',
            //   border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onChanged: (value) {
            log(value);
          },
          onSubmitted: (value) {
            log(value);
          },
        ),
      ),
    );
  }
}
