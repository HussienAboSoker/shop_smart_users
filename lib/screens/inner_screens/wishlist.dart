import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/models/wishlist_model.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/providers/wishlist_provider.dart';
import 'package:shop_smart_users/screens/cart/butttom_checkout.dart';
import 'package:shop_smart_users/services/app_function.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';
import 'package:shop_smart_users/widget/product/custom_product.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});
  final isemptycart = false;
  static const nameSrceen = '/WishList';
  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
       
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                AppFunction.showErrorOrWarning(context,
                    subtitle: "Remove all wishlist !",
                    funcation: wishlistProvider.removeAllWishlist,
                    iserror: false);
              },
              icon: const Icon(
                Icons.delete_forever,
                color: Colors.red,
              ))
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text('WishList(${wishlistProvider.getWishList.length})'),
        //  leading: Image.asset(ImagePath.shopingCart),
      ),
      body: wishlistProvider.getWishList.isEmpty
          ? Center(
              child: EmptySceen(
                  title: "WishList",
                  subtitle: "pleeese add ",
                  imagePath: ImagePath.order),
            )
          : Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DynamicHeightGridView(
                  builder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomProduct(
                        productId: productProvider.getproducts[index].productId,
                      ),
                    );
                  },
                  itemCount: wishlistProvider.getWishList.length,
                  crossAxisCount: 2,
                ),
              ),
            ),
    );
  }
}
