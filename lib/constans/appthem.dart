import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/appcolors.dart';

class AppThemes {
  static ThemeData themeData(
      {required bool isdarktheme, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: isdarktheme
          ? AppColors.darkscafuldcolor
          : AppColors.lightscafuldcolor,
          brightness: isdarktheme?Brightness.dark:Brightness.light,
      //brightness: isdarktheme ? Brightness.dark : Brightness.light,
      cardColor:  isdarktheme
          ? AppColors.darkprimary
          : AppColors.lightcardcolor,
      appBarTheme: AppBarTheme(
       color: 
           Color.fromARGB(49, 72, 49, 110)
        
      )  
          
         
         
    );
  }
}
