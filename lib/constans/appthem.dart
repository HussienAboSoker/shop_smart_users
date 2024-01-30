import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/appcolors.dart';

class AppThemes {
  static ThemeData themeData(
      {required bool isdarktheme, required BuildContext context}) {
    return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        
        backgroundColor:isdarktheme ? AppColors.darkprimary : AppColors.lightcardcolor ,
      ),
        iconTheme: IconThemeData(
          color: isdarktheme ? AppColors.darkprimary : AppColors.lightcardcolor,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: isdarktheme
              ? AppColors.darkscafuldcolor
              : AppColors.lightscafuldcolor,
        ),
        scaffoldBackgroundColor: isdarktheme
            ? AppColors.darkscafuldcolor
            : AppColors.lightscafuldcolor,
        brightness: isdarktheme ? Brightness.dark : Brightness.light,
        //brightness: isdarktheme ? Brightness.dark : Brightness.light,
        cardColor:
            isdarktheme ? AppColors.darkprimary : AppColors.lightcardcolor,
        appBarTheme: const AppBarTheme(color: Color.fromARGB(49, 72, 49, 110)),
        iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
          iconColor:
              MaterialStateProperty.all(Color.fromARGB(255, 97, 37, 113)),
        )));
  }
}
