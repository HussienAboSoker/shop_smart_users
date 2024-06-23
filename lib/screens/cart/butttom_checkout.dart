import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class ButtomCheckout extends StatelessWidget {
  const ButtomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartprovider = Provider.of<CartProvider>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            border: const Border(
              top: BorderSide(color: Colors.white),
            ),
            color: Theme.of(context).scaffoldBackgroundColor),
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.width * 0.03),
        height: size.height * 0.1,
        width: size.width * 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(
                      label:
                          "Total(${cartprovider.getcartproducts.length}products/${cartprovider.quntitycart()}items )"),
                  CustomsubTitle(
                    label:
                        "${cartprovider.totalPice(productprovider: productProvider)}\$",
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.check_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
