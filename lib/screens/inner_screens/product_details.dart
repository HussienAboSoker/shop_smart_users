import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
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
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
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
                              "Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN",
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
                          style: TextStyle(
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
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Add to cart")),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //tow text
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTitle(
                        label: "about this item",
                        fontSize: 25,
                      ),
                      //in caticory

                      CustomTitle(
                        label: "in phone",
                        fontSize: 18,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //more  details
                  const Text(
                    "Galaxy S23\n6.1” Flat FHD+ Dynamic AMOLED 2X\nInfinity-O Display (2340 x 1080)\n425ppi\nHDR10+ certified\nnfinity-O Display: a near bezel-less, full-frontal screen\nMeasured diagonally, Galaxy S23's screen size is 6.1\nin the full rectangle and 5.9\n with accounting for the rounded corners, Galaxy S23+'s screen size is 6.6 in the full rectangle and 6.4 with accounting for the rounded corners and Galaxy S23 Ultra's screen size is 6.8 in the full rectangle and 6.8 with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
