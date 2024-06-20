import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  final String productId,
      productTitle,
      productDescription,
      productImage,
      productPrice,
      productQuantity,
      productCategory;

  ProductModel(
      {required this.productId,
      required this.productTitle,
      required this.productDescription,
      required this.productImage,
      required this.productPrice,
      required this.productQuantity,
      required this.productCategory});
}
