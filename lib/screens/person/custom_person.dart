import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class CustomPerson extends StatelessWidget {
  const CustomPerson({super.key});

  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    return   Padding(
                padding: const EdgeInsets.all(8.0),
                child: Visibility(
                  visible: true,
                  child: Row(
                    children: [
              
                     ClipRRect(
                      //clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20),
                      
                      child: Image.asset("assets/images/sahs.jpeg",
                      height: size.height*0.06,
                      width: size.height*0.09,
                 ),
                      ),
                    const   SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTitle(
                            label: 'Hussien mostafa',
                            fontSize: 20,
                          ),
                          CustomsubTitle(label: 'Flutter developer'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}