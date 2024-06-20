
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/models/product_model.dart';
import 'package:shop_smart_users/providers/product_provider.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key,});
  
  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    List<ProductModel>listSearchProduct=[];
    return Padding(
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
            listSearchProduct = productProvider.searchByName(productname:_searchController.text );
          });
        },
        onSubmitted: (value) {
           setState(() {
            listSearchProduct = productProvider.searchByName(productname:_searchController.text );
          });
        },
      ),
    );
  }
}
