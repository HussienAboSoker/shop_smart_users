import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/models/cart_model.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/screens/cart/butttom_checkout.dart';
import 'package:shop_smart_users/screens/cart/custom_card.dart';
import 'package:shop_smart_users/widget/empty_screen.dart';

class CartSceen extends StatelessWidget {
  const CartSceen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

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
        title: Text('Cart(${cartProvider.getcartproducts.length})'),
        leading: Image.asset(ImagePath.shopingCart),
      ),
      body: cartProvider.getcartproducts.isEmpty
          ? Center(
              child: EmptySceen(
                  title: "empty cart",
                  subtitle: "pleeese add cart",
                  imagePath: ImagePath.emptySearch),
            )
          : ListView.builder(
              itemCount: cartProvider.getcartproducts.length,
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                  //  value: cartProvider.getcartproducts[index], this error becouse this map<key,value>
                //convert map to list 
                  value: cartProvider.getcartproducts.values.toList()[index],
                    child: const CustomCard());
              },
            ),
    );
  }
}
