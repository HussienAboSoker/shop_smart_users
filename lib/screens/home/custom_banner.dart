import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/appconstant.dart';

class Custombanner extends StatelessWidget {
  const Custombanner({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   SizedBox(
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
              );
  }
}