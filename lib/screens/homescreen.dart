import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constans/appconstant.dart';
import 'package:shop_smart_users/constans/imagepath.dart';

class HomeScreenPage extends StatelessWidget {
 const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(ImagePath.shopingCart),
        ),
        title: const Text("Search"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
              height: size.height*0.2,
            //  width: size.width*7,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    AppContsants.banners[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: AppContsants.banners.length,
            
                pagination:const SwiperPagination(),
               // autoplayDelay:4 ,
                control:const SwiperControl(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
