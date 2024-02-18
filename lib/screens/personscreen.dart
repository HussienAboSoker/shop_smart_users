import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';
import 'package:shop_smart_users/screens/inner_sceens/view_recently.dart';
import 'package:shop_smart_users/screens/inner_sceens/wishlist.dart';
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
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/sahs.jpeg,",
                  ),
                  maxRadius: 30,
                  minRadius: 10,
                ),
                title: Text("Hussien mostafa"),
                subtitle: Text("Flutter devoloper"),
              ),
              //image ,2 text(column), icon
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Visibility(
              //     visible: true,
              //     child: Row(
              //       children: [
              //
              //         // Container(
              //         //   height: 60,
              //         //   width: 60,
              //         //   decoration: BoxDecoration(
              //         //     shape: BoxShape.circle,
              //         //    // color: Colors.amber, //Theme.of(context).cardColor,
              //         //     //borderRadius: BorderRadius.circular(12),
              //         //     border: Border.all(
              //         //       color: Colors.black,
              //         //       //Theme.of(context).colorScheme.background ,
              //         //       // style: ,
              //         //       width: 3,
              //         //     ),
              //         //     // image:  DecorationImage(
              //         //     //   image:

              //         //     ),
              //         //   ),
              //         // ),
              //         const SizedBox(
              //           width: 7,
              //         ),
              //         const Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             CustomTitle(
              //               label: 'Hussien mostafa',
              //             ),
              //             CustomsubTitle(label: 'Flutter developer'),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
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
              //WishList
              CustomListTitle(
                function: () {
                  Navigator.pushNamed(context, WishList.nameSceen);
                },
                imagePath: ImagePath.wishlist,
                title: 'wishlist',
              ),
              //viewed recentaly
              CustomListTitle(
                function: () async {
                  await Navigator.pushNamed(context, ViewRecently.nameSceen);
                },
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
                imagePath: ImagePath.recent,
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
                     backgroundColor: MaterialStateProperty.all(const Color.fromARGB(197, 238, 34, 20)),
                     foregroundColor:    MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: ()async {
                  await  AppFunction.showErrorOrWarning(context,
                  function: (){},subtitle: "are you sure you want to signout");
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),),
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
