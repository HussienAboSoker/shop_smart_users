import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';
import 'package:shop_smart_users/widget/cutom_fanimage.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetails.nameSrceen);
      },
      child: Column(
        children: [
          const CutomFancyImage(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  // flex: 5,
                  child: CustomTitle(
                      // color: Colors.green,
                      label:
                          'fsfkdfskfdklfskd dfdsfdsf dfs fsdfs fsd sfd fsfs  fsdfsdf dfs sfdfs f fs fsfdsfs sf')),
              CustomHeart(),
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
