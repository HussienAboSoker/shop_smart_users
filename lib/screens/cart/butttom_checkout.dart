import 'package:flutter/material.dart';
import 'package:shop_smart_users/widget/customtext.dart';
import 'package:shop_smart_users/widget/title.dart';

class ButtomCheckout extends StatelessWidget {
  const ButtomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            border: const Border(
              top: BorderSide(color:Colors.white ),
            ),
            color: Theme.of(context).scaffoldBackgroundColor),
        padding:  EdgeInsets.symmetric(horizontal:size.width*0.007 , vertical: size.height*0.007),
        height: size.height * 0.1,
        width: size.width * 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        const    Flexible(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(label: "Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)Total(6 product/9items)"),
                  CustomsubTitle(label: "prise 120\$",color: Colors.green,),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.check_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
