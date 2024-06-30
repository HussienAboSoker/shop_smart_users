import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/wishlist_model.dart';
import 'package:uuid/uuid.dart';

class WishlistProvider with ChangeNotifier {
  //create a map for wishlist
  final Map<String, WishlistModel> _wishlist = {};
  //create a getter  
  get getWishList => _wishlist;
  //create a method for add prosduct to wishlist
  addProductToWishlist({required productId}) {
    _wishlist.putIfAbsent(
      productId,
      () => WishlistModel(
        productId: productId,
        wishlistId: const Uuid().v4(),
      ),
    );
  }
}
