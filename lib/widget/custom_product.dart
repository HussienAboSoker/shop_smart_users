import 'dart:developer';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';
import 'package:shop_smart_users/widget/customtext.dart';
import 'package:shop_smart_users/widget/title.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key});

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        log("go to scrren product");
      },
      child: Column(
        children: [
          FancyShimmerImage(
            imageUrl: "assets/images/sahs.jpeg",
            width: double.infinity,
            height: size.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                  flex: 5,
                  child: CustomTitle(
                      label:
                          'fsfkdfskfdklfskd dfdsfdsf dfs fsdfs fsd sfd fsfs  fsdfsdf dfs sfdfs f fs fsfdsfs sf')),
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                  flex: 1,
                  child: CustomsubTitle(
                    label: '123\$',
                    color: Colors.green,
                  )),
              Flexible(
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.add_shopping_cart_outlined),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
