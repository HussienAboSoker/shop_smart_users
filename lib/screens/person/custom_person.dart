import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_smart_users/screens/auth/login_screen.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class CustomPerson extends StatelessWidget {
  const CustomPerson({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Visibility(
        visible: true,
        child: Row(
          children: [
            // ClipRRect(
            //   //clipBehavior: Clip.hardEdge,
            //   borderRadius: BorderRadius.circular(20),

            //   child: Image.asset(
            //     "assets/images/sahs.jpeg",
              
            //     height: size.height * 0.06,
            //     width: size.height * 0.09,
            //   ),
            // ),
            
             Container(width: 70,height: 70,
              
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(40),
               
                image:const  DecorationImage(fit: BoxFit.fill,alignment: Alignment.center ,image: AssetImage('assets/images/sahs.jpeg'),),
                
                
              ),
             ),
            const SizedBox(
              width: 20,
            ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                   'Hussien mostafa',
                
                    style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
  ),
                
                Text( 'HussienAbosoker@gmail.com',
                style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.normal),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
logout(BuildContext context,){
  
}