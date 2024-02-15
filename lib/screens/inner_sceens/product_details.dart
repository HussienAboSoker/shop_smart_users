import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});
  static const nameSceen = "/ProductDetails";
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
            SizedBox(
              height: 230,
              child: FancyShimmerImage(
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                imageUrl: "assets/images/sahs.jpeg",
                width: double.infinity,
                height: size.height * 0.2,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: CustomTitle(
                          label:
                              " dddfgdfgfgdfj dgkdgjdgk djdkgd jgdkgjdkjdfgjdfkbdfjgkdfjgkd dg dk dkgdkgd jgdfk gjdgkdfjgdfkgjdkgdkdjdiphone fsfsf sfksdfskf skfskfskf fskfsdfkls",
                          maxlines: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "134\$",
                        style: TextStyle(color: Colors.green),
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
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Add to cart")),
                      ),
                    ],
                  ),
                  //tow text 
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("about this item"),
                      //in caticory
                      Text("in phone"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //more  details
                 CustomsubTitle(label: "hussien"*200),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
