import 'dart:developer';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

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
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            imageUrl: "assets/images/sahs.jpeg",
            width: double.infinity,
            height: size.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                  // flex: 5,
                  child: CustomTitle(
                      // color: Colors.green,
                      label:
                          'fsfkdfskfdklfskd dfdsfdsf dfs fsdfs fsd sfd fsfs  fsdfsdf dfs sfdfs f fs fsfdsfs sf')),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomsubTitle(
                label: '123\$',
                color: Colors.green,
              ),
              Material(
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
            ],
          ),
        ],
      ),
    );
  }
}
