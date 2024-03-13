import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/cart/custom_card.dart';
import 'package:shop_smart_users/widget/product/cutom_latest_product.dart';

class CutomListviewLastProduct extends StatelessWidget {
  const CutomListviewLastProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.20,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  const CutomLatestProduct();
        },
      ),
    );
  }
}
