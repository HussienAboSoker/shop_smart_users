import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/appcolors.dart';

class AppThemes {
  static ThemeData themeData(
      {required bool isdarktheme, required BuildContext context}) {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor:  Colors.blue,
        unselectedItemColor: isdarktheme ? Colors.white : Colors.black,
      ),
      // iconTheme: IconThemeData(
      //   color: isdarktheme ? AppColors.darkprimary : AppColors.lightcardcolor,
      // ),
      // navigationBarTheme: NavigationBarThemeData(
      //   backgroundColor: isdarktheme
      //       ? AppColors.darkscafuldcolor
      //       : AppColors.lightscafuldcolor,
      // ),
      // scaffoldBackgroundColor: isdarktheme
      //     ? AppColors.darkscafuldcolor
      //     : AppColors.lightscafuldcolor,
      brightness: isdarktheme ? Brightness.dark : Brightness.light,
      //brightness: isdarktheme ? Brightness.dark : Brightness.light,
      // cardColor:
      //     isdarktheme ? AppColors.darkprimary : AppColors.lightcardcolor,
      appBarTheme: AppBarTheme(
          backgroundColor: isdarktheme
              ? AppColors.darkscafuldcolor
              : AppColors.lightscafuldcolor,
          elevation: 1),
      // iconButtonTheme: IconButtonThemeData(
      //     style: ButtonStyle(
      //   iconColor:
      //       MaterialStateProperty.all(Color.fromARGB(255, 97, 37, 113)),
      // )));
    );
  }
}
