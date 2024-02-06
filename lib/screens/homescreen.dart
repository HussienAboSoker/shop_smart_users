import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/appconstant.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/widget/product/cutom_catigory.dart';
import 'package:shop_smart_users/widget/product/cutom_latest_product.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(ImagePath.shopingCart),
        ),
        title: const Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //swiper

              SizedBox(
                height: size.height * 0.25,
                //  width: size.width*7,
                child: Swiper(
                  // autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      AppContsants.banners[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: AppContsants.banners.length,
                  autoplay: true,
                  pagination: const SwiperPagination(),
                  // autoplayDelay:4 ,
                  control: const SwiperControl(),
                ),
              ),
              //latest product

              const CustomTitle(label: "latest product"),
              //CutomLatestProduct
              SizedBox(
                height: size.height * 0.44,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CutomLatestProduct();
                  },
                ),
              ),
              //catigory
              const CustomTitle(label: 'catigory'),
              const SizedBox(
                height: 10,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(AppContsants.catigory.length, (index) {
                  return Cutomcatigory(
                      image: AppContsants.catigory[index].image,
                      name: AppContsants.catigory[index].name);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
