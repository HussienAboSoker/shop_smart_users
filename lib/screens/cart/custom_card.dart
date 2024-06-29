import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/models/cart_model.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/screens/cart/quantity_sheet.dart';

import '../../widget/text/cutom_title.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cartmodel = Provider.of<CartModel>(context);
   

    final productProvider = Provider.of<ProductProvider>(context);
   
    final curruntProduct = productProvider.productById(cartmodel.productId);
    final cartProvider = Provider.of<CartProvider>(context);

    Size size = MediaQuery.of(context).size;
    return curruntProduct ==null
    ?
      const Text(" carrunt product null")
    :
     FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              //image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl:
                  curruntProduct.productImage,
                  height: size.height * 0.2,
                  width: size.width * 0.2,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IntrinsicWidth(
                  child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        child: CustomTitle(
                          maxlines: 2,
                          label:
                            curruntProduct.productTitle,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                       cartProvider.delteOneCart(productId: curruntProduct.productId);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Text(
                        "${curruntProduct.productPrice}\$",
                        style: const TextStyle(color: Colors.green),
                      ),
                      OutlinedButton.icon(
                        onPressed: () async {
                          await showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            )),
                            context: context,
                            builder: (context) {
                              return const QunatitySheet();
                            },
                          );
                        },
                        icon: const Icon(Icons.autofps_select),
                        label:  Text("Qute ${cartmodel.countatiy}"),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
