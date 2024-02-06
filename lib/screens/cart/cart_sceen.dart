import 'package:flutter/material.dart';

import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/screens/cart/butttom_checkout.dart';
import 'package:shop_smart_users/screens/cart/custom_card.dart';
import 'package:shop_smart_users/widget/empty_screen.dart';

class CartSceen extends StatelessWidget {
  const CartSceen({super.key});
  final isemptycart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const ButtomCheckout(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_forever,
                color: Colors.red,
              ))
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('Cart(6)'),
        leading: Image.asset(ImagePath.shopingCart),
      ),
      body: isemptycart
          ? Center(
              child: EmptySceen(
                  title: "empty cart",
                  subtitle: "pleeese add cart",
                  imagePath: ImagePath.emptySearch),
            )
          : ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CustomCard();
              },
            ),
    );
  }
}
