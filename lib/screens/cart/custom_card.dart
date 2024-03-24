import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/cart/quantity_sheet.dart';

import '../../widget/text/cutom_title.dart';

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
                        'https://i.ebayimg.com/images/g/LGAAAOSwBq9lqOaT/s-l960.jpg',
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
                                  '"Samsung Galaxy S23 Ultra 5G 256GB 8GB RAM W/SPEN"'),
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
