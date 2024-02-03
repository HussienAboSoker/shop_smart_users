import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/cart/quantity_sheet.dart';

import '../../widget/title.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return IntrinsicWidth(
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 0.2,
            child: Row(
              children: [
                //image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                    height: size.height * 0.2,
                    width: size.width * 0.2,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                IntrinsicWidth(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: const CustomTitle(
                              maxlines: 2,
                              label:
                                  'dfsfsg gjg gjdg djg hgj dgjdgj dgj dgdj djgd djg jdgj dgjgf l hflh flhf lfhlf hlhlflhlflhflhlf flhlhfhlf lglflhflhflhflhfl lflhfllf'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "123 \$",
                          style: TextStyle(color: Colors.green),
                        ),
                        OutlinedButton.icon(
                          onPressed: () async {
                            await showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              )),
                              context: context,
                              builder: (context) {
                                return const QunatitySheet();
                              },
                            );
                          },
                          icon: const Icon(Icons.autofps_select),
                          label: const Text("Qute"),
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
