import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constans/imagepath.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';
import 'package:shop_smart_users/widget/custom_list_title.dart';
import 'package:shop_smart_users/widget/customtext.dart';

import 'package:shop_smart_users/widget/title.dart';

class PersonScreenPage extends StatelessWidget {
  const PersonScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
                            image:
                                AssetImage("assets/images/profile/recent.png "),
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
                          CustomsubTitle(label: 'Flutter developer'),
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
              //general
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.order,
                title: 'All product',
              ),
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.wishlist,
                title: 'wishlist',
              ),
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.recent,
                title: 'viewed recentaly',
              ),
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.address,
                title: 'Address',
              ),
              const Divider(
                thickness: 1,
                height: 12,
              ),
              const CustomTitle(label: 'Setting'),
              SwitchListTile(
                title: Text(
                    themeProvider.getIsdarkTheme ? "Dark Mode" : "light mode"),
                onChanged: (value) {
                  themeProvider.setdarktheme(value);
                },
                value: themeProvider.getIsdarkTheme,
              ),
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.recent,
                title: 'viewed recentaly',
              ),
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.address,
                title: 'Address',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
