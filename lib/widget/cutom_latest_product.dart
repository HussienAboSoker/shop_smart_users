import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import 'package:shop_smart_users/widget/title.dart';

class CutomLatestProduct extends StatelessWidget {
  const CutomLatestProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.width * 0.22,
        height: size.height * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FancyShimmerImage(
                imageUrl: "assets/images/sahs.jpeg",
                width: double.infinity,
                height: size.height * 0.22,
              ),
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
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
