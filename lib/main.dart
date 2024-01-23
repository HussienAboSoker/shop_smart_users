import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/constans/appthem.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';
import 'package:shop_smart_users/screens/setting_sceen.dart';

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
      child: Consumer<ThemeProvider>(builder: (
        context,themeProvider,child
      ) {
        return MaterialApp(
          title: 'shop smart',
          theme: AppThemes.themeData(
              isdarktheme: themeProvider.getIsdarkTheme, context: context),
          home: const SettingsScreen(),
        );
      }),
    );
  }
}
