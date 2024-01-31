import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';
import 'package:shop_smart_users/widget/custom_list_title.dart';
import 'package:shop_smart_users/widget/customtext.dart';
import 'package:shop_smart_users/widget/title.dart';

class PersonScreenPage extends StatelessWidget {
  const PersonScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Person"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image ,2 text(column), icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Visibility(
                visible: true,
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber, //Theme.of(context).cardColor,
                        //borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.black,
                          //Theme.of(context).colorScheme.background ,
                          // style: ,
                          width: 3,
                        ),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profile/recent.png "),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTitle(
                          label: 'Hussien mostafa',
                        ),
                        CustomText(label: 'Flutter developer'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
           const CustomTitle(label: "general"),
           CustomListTitle(
            function: (){},
            imagePath: ImagePath.bagWish,
            title: 'All product',
           ),
          ],
        ),
      ),
    );
  }
}
