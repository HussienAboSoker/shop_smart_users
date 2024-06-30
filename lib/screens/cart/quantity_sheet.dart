import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/models/cart_model.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';

class QunatitySheet extends StatelessWidget {
  const QunatitySheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartModel = Provider.of<CartModel>(context);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(12),
          height: 12,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  cartProvider.initialQuntitycart(
                       index: index, cartModel: cartModel);
                  Navigator.pop(context);
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("${index + 1}"),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
