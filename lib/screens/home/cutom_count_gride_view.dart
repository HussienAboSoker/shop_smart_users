import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/appconstant.dart';
import 'package:shop_smart_users/widget/product/cutom_catigory.dart';

class CutomcountGridView extends StatelessWidget {
  const CutomcountGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(AppContsants.catigory.length, (index) {
        return Cutomcatigory(
            image: AppContsants.catigory[index].image,
            name: AppContsants.catigory[index].name);
      }),
    );
  }
}
