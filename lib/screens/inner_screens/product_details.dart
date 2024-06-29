import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});
  static const nameSrceen = "/ProductDetails";
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    //to read an argument ,that is return when navigation
    String? productId = ModalRoute.of(context)!.settings.arguments as String?;

    final currantproduct = productProvider.productById(productId!);
    final cartprovider = Provider.of<CartProvider>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prduct details"),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: currantproduct == null
          ? const SizedBox.shrink()
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: FancyShimmerImage(
                        imageUrl: currantproduct.productImage,
                        height: size.height * 0.30,
                        width: double.infinity,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          //title and price
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 4,
                                child: CustomTitle(
                                  label: currantproduct.productTitle,
                                  maxlines: 2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  currantproduct.productPrice,
                                  style: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //favorite ,add to cart buttom
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CustomHeart(),
                              Expanded(
                                child: ElevatedButton.icon(

                                  onPressed: () {
                                    if (cartprovider.isProductInCart(
                                        productId: productId)) {
                                      return;
                                    }
                                    cartprovider.addproducttocart(
                                        productId: productId);
                                  },
                                  label:const Text("Add to cart") ,
                                  icon: cartprovider.isProductInCart(
                                          productId: productId)
                                      ? const Icon(Icons.done)
                                      
                                      : const Icon(Icons.add_shopping_cart_outlined),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //tow text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CustomTitle(
                                label: "about this item",
                                fontSize: 25,
                              ),
                              //in caticory

                              CustomTitle(
                                label: currantproduct.productCategory,
                                fontSize: 18,
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          //more  details
                          Text(
                            currantproduct.productDescription,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
