import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shop_smart_users/services/app_function.dart';
import 'package:image_picker/image_picker.dart';

class PickImageDialog extends StatelessWidget {
  const PickImageDialog({super.key, this.pickedimage, required this.function});
  final XFile? pickedimage;
  final Function function;
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    //  final ImagePicker picker = ImagePicker();
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: pickedimage == null
                ? Container(
                    height: size.height * 0.2,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                      color: Colors.white,
                    ),
                  )
                : Image.file(
                    fit: BoxFit.fill,
                    File(
                      pickedimage!.path,
                    ),
                  ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Material(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(181, 110, 84, 152),
            child: InkWell(
              onTap: () async {
                await AppFunction.pickImageDialog(
                    context: context,
                    funGalary: () {},
                    funRemove: () {},
                    funcamera: () {});
              },
              splashColor: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
