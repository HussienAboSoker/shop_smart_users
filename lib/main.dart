import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_smart_users/constants/appthem.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';
import 'package:shop_smart_users/screens/inner_sceens/product_details.dart';
import 'package:shop_smart_users/screens/inner_sceens/view_recently.dart';
import 'package:shop_smart_users/screens/inner_sceens/wishlist.dart';
import 'package:shop_smart_users/screens/rootscreens.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        })
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'shop smart',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.themeData(
              isdarktheme: themeProvider.getIsdarkTheme, context: context),
          home: const RootScreens(),
          routes: {
            // '/ProductDetails':(context) =>const ProductDetails(),
            ProductDetails.nameSceen: (context) => const ProductDetails(),
            ViewRecently.nameSceen: (context) => const ViewRecently(),
            WishList.nameSceen: (context) => const WishList(),
          },
        );
      }),
    );
  }
}
