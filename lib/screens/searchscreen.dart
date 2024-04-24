import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/providers/product_provider.dart';

import 'package:shop_smart_users/widget/product/custom_product.dart';
import 'package:shop_smart_users/widget/cutom_text_filed.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

class SearchScreenPage extends StatelessWidget {
  const SearchScreenPage({super.key});
  final isempty = false;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Image.asset(ImagePath.shopingCart),
        title: const Text("Search"),
      ),
      body: isempty
          ? Center(
              child: EmptySceen(
                imagePath: ImagePath.emptySearch,
                title: 'Empty search ',
                subtitle: 'please seach ',
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
                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          //for listen a productmodel
                          child: ChangeNotifierProvider.value(
                            value: productProvider.getproducts[index],
                            child: const CustomProduct()),
                        );
                      },
                      itemCount: productProvider.getproducts.length,
                      crossAxisCount: 2,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
