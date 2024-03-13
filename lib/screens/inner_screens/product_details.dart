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
            const SizedBox(
              height: 230,
              child: CutomFancyImage(),
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
                      const CustomHeart(),
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
                  CustomsubTitle(label: "hussien" * 200),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
