import 'package:flutter/material.dart';

class CartModel with ChangeNotifier{
 final String productId,cartid;
 final int countatiy;
 CartModel({required this.productId, required this.cartid, required this.countatiy});
 
   
}