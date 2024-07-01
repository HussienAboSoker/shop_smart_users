import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/providers/wishlist_provider.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';

import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key, required this.productId});
  final String productId;

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    //  final productProvidermodel = Provider.of<ProductModel>(context);

    final productProvider = Provider.of<ProductProvider>(context);
    final currantproduct =
        productProvider.productById(productId: widget.productId);

    final cartProvider = Provider.of<CartProvider>(context);
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    Size size = MediaQuery.of(context).size;
    return currantproduct == null // productProvidermodel==null //
        ? const SizedBox.shrink()
        : GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                ProductDetails.nameSrceen,
                arguments: currantproduct.productId,
              );
            },
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FancyShimmerImage(
                    boxFit: BoxFit.fill,
                    //  imageUrl: productProvidermodel.productImage,
                    imageUrl: currantproduct.productImage,
                    height: size.height * 0.22,
                    width: double.infinity,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 5,
                      child: CustomTitle(
                        color: Colors.green,
                        label: currantproduct.productTitle,
                        // label: productProvidermodel.productTitle,
                      ),
                    ),
                    Flexible(
                        child: IconButton(
                      onPressed: () {
                        wishlistProvider.addProductToWishlist(
                            productId: currantproduct.productId);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: wishlistProvider.isproductINWishlist(
                                productId: currantproduct.productId)
                            ? Colors.red
                            : Colors.grey,
                      ),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: CustomsubTitle(
                        //label: productProvidermodel.productPrice,
                        label: "${currantproduct.productPrice} \$ ",
                        color: Colors.green,
                      ),
                    ),
                    Flexible(
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        color: cartProvider.isProductInCart(
                                productId: currantproduct.productId)
                            ? Colors.blue
                            : Colors.white,
                        child: InkWell(
                          onTap: () {
                            if (cartProvider.isProductInCart(
                                productId: currantproduct.productId)) {
                              return;
                            }
                            cartProvider.addproducttocart(
                                productId: currantproduct.productId);
                          },
                          splashColor: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                                color: Colors.black,
                                cartProvider.isProductInCart(
                                        productId: currantproduct.productId)
                                    ? Icons.check
                                    : Icons.add_shopping_cart_outlined),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
