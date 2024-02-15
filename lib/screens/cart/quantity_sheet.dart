import 'package:flutter/material.dart';

class QunatitySheet extends StatelessWidget {
  const QunatitySheet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
           margin:const  EdgeInsets.all(12),
          height: 12,
          width: 20,
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
                    child: Text("${index + 1}"),
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
