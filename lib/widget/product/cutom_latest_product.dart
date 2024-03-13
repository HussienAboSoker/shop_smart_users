import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';
import 'package:shop_smart_users/widget/custom_heart_bt.dart';
import 'package:shop_smart_users/widget/cutom_fanimage.dart';

import 'package:shop_smart_users/widget/text/cutom_title.dart';

class CutomLatestProduct extends StatelessWidget {
  const CutomLatestProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetails.nameSrceen);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width * 0.30,
         height: size.height *2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const CutomFancyImage(),
              ),
            
              const Flexible(
                child: CustomTitle(
                  label:
                      "ffhfjgfdjg djgdfjgdkfj dfjgfdjk jdfgjdf djkgjdf gjkdgjfdgjdfgjkdfgjfgdfkgjdfkjdfjgfdjgfdkgjfdgkdfgjdkgjdfkgjfdgjfdkjgfdkfdjgfkjdg jkdfgjdfjkgdfkgjfdkjgfjdjkf",
                  maxlines: 2,
                ),
              ),
              const FittedBox(
                child: Text(
                  "1245\$",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              Flexible(
                child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.done,
                        color: Colors.blue,
                      ),
                    ),
                   const CustomHeart(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
