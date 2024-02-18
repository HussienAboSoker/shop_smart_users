import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/inner_sceens/product_details.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';
import 'package:shop_smart_users/widget/cutom_fanimage.dart';

import 'package:shop_smart_users/widget/text/cutom_title.dart';

class CutomLatestProduct extends StatelessWidget {
  const CutomLatestProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetails.nameSceen);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width * 0.22,
          height: size.height * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const CutomFancyImage(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Flexible(
                child: CustomTitle(
                  label:
                      "sahssahssahssahssahssahssahssahssahssahssahssahssahssahssahssahssahssahssahs",
                  maxlines: 2,
                ),
              ),
              const FittedBox(
                child: Text(
                  "1245\$",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.done,
                        color: Colors.blue,
                      ),
                    ),
                    const CustomHeart(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
