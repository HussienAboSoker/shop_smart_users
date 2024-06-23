import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_smart_users/constants/appthem.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/providers/product_provider.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';
import 'package:shop_smart_users/screens/auth/forgot_password_screen.dart';
import 'package:shop_smart_users/screens/auth/sin_up_screen.dart';
import 'package:shop_smart_users/screens/inner_screens/product_details.dart';
import 'package:shop_smart_users/screens/inner_screens/view_recently.dart';
import 'package:shop_smart_users/screens/inner_screens/wishlist.dart';
import 'package:shop_smart_users/screens/auth/login_screen.dart';
import 'package:shop_smart_users/rootscreens.dart';
import 'package:shop_smart_users/screens/searchscreen.dart';

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
        }),
        ChangeNotifierProvider(create: (_) {
          return ProductProvider();
        }),
         ChangeNotifierProvider(create: (_) {
          return CartProvider();
        }),
          ChangeNotifierProvider(create: (_) {
          return CartProvider();
        }),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'shop smart',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.themeData(
              isdarktheme: themeProvider.getIsdarkTheme, context: context),
          home: const RootScreens(),
          routes: {
            RootScreens.namescreen: (context) => const RootScreens(),
            SignUpScreen.nameSrceen: (context) => const SignUpScreen(),
            LoginScreen.nameSrceen: (context) => const LoginScreen(),
            ForgotPassowrd.nameSrceen: (context) => const ForgotPassowrd(),

            // '/ProductDetails':(context) =>const ProductDetails(),
            SearchScreenPage.nameSrceen: (context) => const SearchScreenPage(),

            ProductDetails.nameSrceen: (context) => const ProductDetails(),
            ViewRecently.nameSrceen: (context) => const ViewRecently(),
            WishList.nameSrceen: (context) => const WishList(),
          },
        );
      }),
    );
  }
}
