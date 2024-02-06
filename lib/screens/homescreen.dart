import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/appconstant.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/widget/cutom_latest_product.dart';
import 'package:shop_smart_users/widget/title.dart';

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
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //swiper
           
            SizedBox(
              height: size.height * 0.2,
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
        
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CutomLatestProduct();
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
