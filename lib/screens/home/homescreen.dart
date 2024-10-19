import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/screens/home/custom_banner.dart';
import 'package:shop_smart_users/screens/home/custom_listview_last_prduct.dart';
import 'package:shop_smart_users/screens/home/cutom_count_gride_view.dart';

import 'package:shop_smart_users/widget/text/cutom_title.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(ImagePath.shopingCart),
          ),
          title:  Text("Shop smart", style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //swiper

                Custombanner(),
                //latest product
                SizedBox(
                  height: 20,
                ),
                CustomTitle(label: "latest product"),
                SizedBox(
                  height: 20,
                ),
                //CutomLatestProduct
                CutomListviewLastProduct(),
                SizedBox(
                  height: 20,
                ),
                //catigory
                CustomTitle(label: 'catigory'),
                SizedBox(
                  height: 20,
                ),

                CutomcountGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
