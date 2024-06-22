

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';

import 'package:shop_smart_users/widget/product/custom_product.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class SearchScreenPage extends StatefulWidget {
  static const String nameSrceen = '/searchscreen.dart';

  const SearchScreenPage({super.key});

  @override
  State<SearchScreenPage> createState() => _SearchScreenPageState();
}

class _SearchScreenPageState extends State<SearchScreenPage> {
  late TextEditingController _searchController;
  @override
  //to initalize controller
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  //for cleat buffer data when go to anther screen
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
 List<ProductModel> listSearchProduct = [];
  @override
  Widget build(BuildContext context) {
   
    // Get the product data provider from the current context
    final productProvider = Provider.of<ProductProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    // Extract the category passed as an argument through navigation

    final String? passcatigory =
        ModalRoute.of(context)!.settings.arguments as String?;

    // Determine the list of products based on the passed category
// If the passed category is 'null', use all products
// If the passed category is not 'null', use the products that match the passed categor

    List<ProductModel> productlist = passcatigory == null
        ? productProvider.getproducts
        : productProvider.productByCaticory(catigoryname: passcatigory);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Image.asset(ImagePath.shopingCart),
          title: CustomTitle(
            label: passcatigory ?? "search product"
      
            ),
        ),
        body: productProvider.getproducts.isEmpty
            ? Center(
                child: EmptySceen(
                  imagePath: ImagePath.emptySearch,
                  title: 'products not found ',
                  subtitle: 'products will added soon',
                ),
              )
            : Column(
                children: [
                  SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            //note when you Clear()you dont must put set state
                            //this handled by flutter team
                            _searchController.clear();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Color.fromARGB(205, 209, 44, 33),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        hintText: 'Search...',
                        //   border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          listSearchProduct = productProvider.searchByName(
                            passproductlist: productlist,
                              productname: _searchController.text);
                            

                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          listSearchProduct = productProvider.searchByName(
                            passproductlist: productlist,
                              productname: _searchController.text);
                        });
                      },
                    ),
                  )),
                  if (_searchController.text.isNotEmpty &&
                      listSearchProduct.isEmpty) ...[
                    const Text( "product not found",style: TextStyle( color: Colors.red,),),
                  ],
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DynamicHeightGridView(
                        builder: (context, index) {
                          
                      //    log("productlist ${productlist[2].productId}");
                         // print("list searsh is ${listSearchProduct[index].productId}");
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            
                            //for listen a productmodel
                            child: CustomProduct(
                              
                                productId: _searchController.text.isEmpty
                                    ? productlist[index].productId
                                    : listSearchProduct[index].productId
                                    
                                    ),
                          );
                        },
                      //  itemCount: productProvider.getproducts.length,
                        itemCount: _searchController.text.isEmpty
                            ? productlist.length
                            : listSearchProduct.length,
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
