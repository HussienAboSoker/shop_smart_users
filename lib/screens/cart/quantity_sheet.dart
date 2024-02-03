import 'package:flutter/material.dart';
import 'package:shop_smart_users/widget/customtext.dart';

class QunatitySheet extends StatelessWidget {
  const QunatitySheet({super.key});
  
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
         // margin:  EdgeInsets.all(size.longestSide+1),
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("${index+1}"),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
