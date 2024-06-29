import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/widget/product/cutom_latest_product.dart';

class CutomListviewLastProduct extends StatelessWidget {
  const CutomListviewLastProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productprovider=Provider.of<ProductProvider>(context);
    
   
    
    return SizedBox(
      height: size.height * 0.20,
      child: ListView.builder(
        itemCount: productprovider.getproducts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ChangeNotifierProvider.value(
            value: productprovider.getproducts[index],
            child: const CutomLatestProduct());
        },
      ),
    );
  }
}
