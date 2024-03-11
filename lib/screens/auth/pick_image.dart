import 'package:flutter/material.dart';
import 'package:shop_smart_users/services/app_function.dart';

class PickImage extends StatelessWidget {
  const PickImage({super.key});

  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.2,
          width: size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(),
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Material(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(241, 33, 149, 243),
            child: InkWell(
              onTap: () async {
                await AppFunction.pickImageDialog(context,
                    funGalary: () {}, funRemove: () {}, funcamera: () {});
              },
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.camera_alt),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
