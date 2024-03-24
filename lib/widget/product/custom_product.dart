import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';
import 'package:shop_smart_users/widget/cutom_fanimage.dart';

import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key});

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetails.nameSrceen);
      },
      child: Column(
        children: [
          
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FancyShimmerImage(
                boxFit: BoxFit.fill,
                imageUrl:
                
                    'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
                height: size.height * 0.22,
                width: double.infinity,
              ),
            ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Flexible(
              flex: 5,
               child: CustomTitle(
                    color: Colors.green,
                   label:
                       'fsfkdf sf'*10),
             ),
             Flexible(child: CustomHeart()),
           ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child:  CustomsubTitle(
                  label: '123\$',
                  color: Colors.green,
                ),
              ),
              Flexible(
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.add_shopping_cart_outlined),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
