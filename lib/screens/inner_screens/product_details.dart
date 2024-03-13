import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';
import 'package:shop_smart_users/widget/cutom_fanimage.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
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
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prduct details"),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FancyShimmerImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
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
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Flexible(
                        flex: 4,
                        child: CustomTitle(
                          label:
                              " dddfgdfgfgdfj dgkdgjdgk djdkgd jgdkgjdkjdfgjdfkbdfjgkdfjgkd dg dk dkgdkgd jgdfk gjdgkdfjgdfkgjdkgdkdjdiphone fsfsf sfksdfskf skfskfskf fskfsdfkls",
                          maxlines: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "134\$",
                          style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
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
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Add to cart")),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  //tow text
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTitle(label: "about this item",fontSize: 25,),
                      //in caticory
                    
                      CustomTitle(label: "in phone",fontSize: 18,),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //more  details
                  Text( "hussien" * 2800,style: TextStyle(
                    fontSize: 20,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
