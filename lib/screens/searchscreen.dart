import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/imagepath.dart';

import 'package:shop_smart_users/widget/empty_screen.dart';

class SearchScreenPage extends StatelessWidget {
  const SearchScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptySceen(
      imagePath: ImagePath.emptySearch,
      title: 'Empty search ',
      subtitle: 'please seach ',
    );
  }
}
