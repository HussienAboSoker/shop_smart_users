import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
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
          width: size.width*0.50,
          height: size.height*70,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FancyShimmerImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                    height: size.height * 0.2,
                    width: size.width * 0.2,
                  ),
                ),
              ),
           SizedBox(width: 10,),
            Flexible(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        
               Text("data"*10,overflow:TextOverflow.ellipsis ,maxLines: 3,style: TextStyle(fontSize: 15),),
                   SizedBox(height: 10,)  , 
                 const FittedBox(
                  child: Text(
                    "price:  1245 \$",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                   FittedBox(
                     child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            
            
            
                 
            ],
          ),
        ),
      ),
    );
  }
}
