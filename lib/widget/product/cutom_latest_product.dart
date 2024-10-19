import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/providers/view_recntly_provider.dart';
import 'package:shop_smart_users/providers/wishlist_provider.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';

class CutomLatestProduct extends StatelessWidget {
  const CutomLatestProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productProvider = Provider.of<ProductProvider>(context);
    final productModel = Provider.of<ProductModel>(context);
    final currantproduct =
        productProvider.productById(productId: productModel.productId);
    final cartprovider = Provider.of<CartProvider>(context);
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    //viewrecntly
    final viewRecentlyProvider=Provider.of<ViewRecntlyprovider>(context);

    //return  currantproduct==null?const SizedBox.shrink():

    return currantproduct == null
        ? const SizedBox.shrink()
        : GestureDetector(
            onTap: () {
             viewRecentlyProvider.addToViewRecently(productId: currantproduct.productId);
              Navigator.pushNamed(
                context,
                ProductDetails.nameSrceen,
                arguments: productModel.productId,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: size.width * 0.50,
                height: size.height * 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: FancyShimmerImage(
                          imageUrl: currantproduct.productImage,
                          height: size.height * 0.2,
                          width: size.width * 0.2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currantproduct.productTitle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FittedBox(
                            child: Text(
                              "${currantproduct.productPrice} \$ ",
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (cartprovider.isProductInCart(
                                        productId: currantproduct.productId)) {
                                      return;
                                    }
                                    cartprovider.addproducttocart(
                                        productId: currantproduct.productId);
                                  },
                                  icon: Icon(
                                    cartprovider.isProductInCart(
                                            productId: currantproduct.productId)
                                        ? Icons.done
                                        : Icons.shopping_cart_outlined,
                                    color: cartprovider.isProductInCart(
                                            productId: currantproduct.productId)
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                ),
                                IconButton(
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
