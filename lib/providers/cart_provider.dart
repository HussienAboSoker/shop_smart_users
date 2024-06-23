import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/cart_model.dart';
import 'package:shop_smart_users/models/product_model.dart';
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

  deltecart({required cartId}) {
    _cartproducts.remove(cartId);
  }

  double totalPice({required ProductProvider productprovider}) {
    double total = 0;

    _cartproducts.forEach(
      (key, value) {
        final currnatproduct = productprovider.productById(value.cartId);
        if (currnatproduct == null) {
          total += 0;
        } else {
          total += double.parse(currnatproduct.productPrice) * value.countatiy;
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
