import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/screens/cart/butttom_checkout.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';
import 'package:shop_smart_users/widget/product/custom_product.dart';

class ViewRecently extends StatelessWidget {
  const ViewRecently({super.key});
  final isemptycart = false;
  static const nameSrceen = '/ViewRecently';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const ButtomCheckout(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_forever,
                color: Colors.red,
              ))
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('ViewRecently(6)'),
        //   leading: Image.asset(ImagePath.shopingCart),
      ),
      body: isemptycart
          ? Center(
              child: EmptySceen(
                  title: "empty ViewRecently",
                  subtitle: "pleeese add ",
                  imagePath: ImagePath.order),
            )
          : Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DynamicHeightGridView(
                  builder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomProduct(
                       productId: "",
                      ),
                    );
                  },
                  itemCount: 90,
                  crossAxisCount: 2,
                ),
              ),
            ),
    );
  }
}
