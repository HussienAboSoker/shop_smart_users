import 'package:flutter/material.dart';

import 'package:shop_smart_users/constans/imagepath.dart';
import 'package:shop_smart_users/screens/cart/butttom_checkout.dart';
import 'package:shop_smart_users/screens/cart/custom_card.dart';



class CartSceen extends StatelessWidget {
  const CartSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       bottomSheet:const ButtomCheckout(
        
       ) ,
        appBar: AppBar(
          elevation: 0,
          actions: [IconButton(onPressed: (){}, icon:const Icon(Icons.delete_forever,color: Colors.red,))],
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text('Cart(6)'),
          leading: Image.asset(ImagePath.shopingCart),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomCard();
          },
        ),
       );
  }
}
