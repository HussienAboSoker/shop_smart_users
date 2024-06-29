import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/cart_model.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
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
          productId: productId, cartId: const Uuid().v4(), countatiy: 1),
    );
    notifyListeners();
  }

  bool isProductInCart({required String productId}) {
    return _cartproducts.containsKey(productId);
  }

 void delteOneCart({required productId}) {
    _cartproducts.remove(productId);
    notifyListeners();
  }
  void deletAllCarts(){
    _cartproducts.clear();
    notifyListeners();
  }

  int totalPice({required ProductProvider productprovider}) {
    int total = 0;

    _cartproducts.forEach(
      (key, value) {
        final currnatproduct = productprovider.productById(value.productId);
        print("currandata= = $currnatproduct");
        if (currnatproduct == null) {
          total += 0;
        } else {
          total +=int.parse(currnatproduct.productPrice)  * value.countatiy;
         

        }
      },
    );

    return total;
  }

  int quntitycart() {
    int total = 0;
    _cartproducts.forEach(
      (key, value) {
        total += value.countatiy;
      },
    );
    return total;
  }
}
