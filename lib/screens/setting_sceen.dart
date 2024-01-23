import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/providers/themeprovider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title:
                Text(themeProvider.getIsdarkTheme ? "Dark Mode" : "light mode"),
            onChanged: (value) {
              themeProvider.setdarktheme(value);
            },
            value: themeProvider.getIsdarkTheme,
          )
        ],
      ),
    );
  }
}
