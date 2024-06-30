import 'package:flutter/material.dart';

class CartModel with ChangeNotifier{
 final String productId,cartId;
  int countatiy;
 CartModel({required this.productId, required this.cartId, required this.countatiy});
 
 
   
}
