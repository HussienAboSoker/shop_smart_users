import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/cart_model.dart';
import 'package:uuid/uuid.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartModel> _cartproducts = {};

  Map<String, CartModel> get getcartproducts {
    return _cartproducts;
  }

  void addproducttocart({required String productId}) {
    _cartproducts.putIfAbsent(
      productId, //key
      () => CartModel(
          productId: productId, cartid: const Uuid().v4(), countatiy: 2),
    );
  }

  bool isProductInCart({required String productId}) {
    return _cartproducts.containsKey(productId);
  }
}
