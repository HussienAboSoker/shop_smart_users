import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';
import 'package:shop_smart_users/screens/cutom_text_filed.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';

class SearchScreenPage extends StatelessWidget {
  const SearchScreenPage({super.key});
  final isempty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Image.asset(ImagePath.shopingCart),
        title:const Text("Search"),
      ) ,
      body:   isempty
        ? EmptySceen(
          imagePath: ImagePath.emptySearch,
          title: 'Empty search ',
          subtitle: 'please seach ',
        )
        :const CustomTextField() ,
    );
    
  
  }
}
