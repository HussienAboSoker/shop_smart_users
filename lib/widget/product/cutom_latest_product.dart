import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';

class CutomLatestProduct extends StatelessWidget {
  const CutomLatestProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     final productProvider = Provider.of<ProductProvider>(context);
     final productModel = Provider.of<ProductModel>(context);
    final currantproduct = productProvider.productById(productId: productModel.productId);
     final Cartprovider = Provider.of<CartProvider>(context);

    

    //return  currantproduct==null?const SizedBox.shrink():

    return  currantproduct==null?const SizedBox.shrink():
     GestureDetector(
      onTap: () {
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
                    imageUrl:currantproduct.productImage,
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
                       currantproduct.productPrice,
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
                              if(Cartprovider.isProductInCart(productId: currantproduct.productId)){
                               return;
                              }
                              Cartprovider.addproducttocart(productId: currantproduct.productId);
                            },
                            icon:  Icon(
                              Cartprovider.isProductInCart(productId: currantproduct.productId)?
                              Icons.done:
                              Icons.shopping_cart_outlined,
                              color:  Cartprovider.isProductInCart(productId: currantproduct.productId)?
                               Colors.blue:Colors.black,
                            ),
                          ),
                          const CustomHeart(),
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
