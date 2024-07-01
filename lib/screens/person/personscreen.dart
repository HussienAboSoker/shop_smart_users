import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';

import 'package:shop_smart_users/screens/inner_screens/view_recently.dart';
import 'package:shop_smart_users/screens/inner_screens/wishlist.dart';
import 'package:shop_smart_users/screens/person/custom_person.dart';
import 'package:shop_smart_users/services/app_function.dart';
import 'package:shop_smart_users/widget/custom_list_title.dart';

import 'package:shop_smart_users/widget/text/cutom_title.dart';

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
              const SizedBox(
                height: 50,
              ),
              const CustomPerson(),
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
                imagePath: ImagePath.address,
                title: 'All product',
              ),
              //WishList
              CustomListTitle(
                function: () {
                  Navigator.pushNamed(context, WishList.nameSrceen,
                  );
                  
                },
                imagePath: ImagePath.wishlist,
                title: 'wishlist',
              ),
              //viewed recentaly
              CustomListTitle(
                function: () async {
                  await Navigator.pushNamed(context, ViewRecently.nameSrceen);
                },
                imagePath: ImagePath.address,
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
              //dark or light
              SwitchListTile(
                secondary: Image.asset(ImagePath.darkOrLight, height: 20),
                title: Text(
                    themeProvider.getIsdarkTheme ? "Dark Mode" : "light mode"),
                onChanged: (value) {
                  themeProvider.settheme(value);
                },
                value: themeProvider.getIsdarkTheme,
              ),
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.address,
                title: 'viewed recentaly',
              ),
              //address
              CustomListTitle(
                function: () {},
                imagePath: ImagePath.address,
                title: 'Address',
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(197, 238, 34, 20)),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  onPressed: () async {
                    await AppFunction.showErrorOrWarning(context,
                        iserror: false,
                        funcation: () {},
                        subtitle: "are you sure you want to signout");
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text("logout"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
