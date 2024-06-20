import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:shop_smart_users/providers/product_provider.dart';

import 'package:shop_smart_users/widget/product/custom_product.dart';
import 'package:shop_smart_users/widget/cutom_text_filed.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class SearchScreenPage extends StatelessWidget {
  static const String nameSrceen = '/searchscreen.dart';

  const SearchScreenPage({super.key});
  final isempty = false;
  @override
  Widget build(BuildContext context) {
    // Get the product data provider from the current context
    final productProvider = Provider.of<ProductProvider>(context);
    // Extract the category passed as an argument through navigation
    final String? passcatigory =
        ModalRoute.of(context)!.settings.arguments as String?;
    // Determine the list of products based on the passed category
// If the passed category is 'null', use all products
// If the passed category is not 'null', use the products that match the passed categor

    List<ProductModel> productlist = passcatigory == null
        ? productProvider.products
        : productProvider.productByCaticory(catigoryname: passcatigory);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Image.asset(ImagePath.shopingCart),
          title: CustomTitle(label: passcatigory ?? "search product"),
        ),
        body: productlist.isEmpty
            ? Center(
                child: EmptySceen(
                  imagePath: ImagePath.emptySearch,
                  title: 'products not found ',
                  subtitle: 'products will added soon',
                ),
              )
            : Column(
                children: [
                  const SizedBox(child: CustomTextField()),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DynamicHeightGridView(
                        builder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            //for listen a productmodel
                            child: CustomProduct(
                              productId: productlist[index].productId,
                            ),
                          );
                        },
                        itemCount: productlist.length,
                        crossAxisCount: 2,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
