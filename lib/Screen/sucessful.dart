import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/colors.dart';
import 'screen_two.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "STUDEASY",
          style: TextStyles.bold(
            14,
            AppColors.vanadyBlue
          ),
        ),
      ),
      body: CustomScrollView(
         slivers: [
           SliverToBoxAdapter(
             child: Container(
               padding:   const EdgeInsets.symmetric(horizontal: 51,),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   const Image(image: AssetImage("assets/images/Group.png")),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child: Text("Wahoo! Completed Successfully",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(fontSize: 24, fontWeight: FontWeight.w700, color: const Color(0xff333333)),
                  ),
                ),
                   const SizedBox(height: 48,),
                   Text("Make this a regular habit and you just might not be needing us for long",
                     textAlign: TextAlign.center,
                     style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500, color: const Color(0xff4F4F4F)),
                   ),
                   const SizedBox(height: 110,),
                   GestureDetector(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
                     },
                     child: Container(
                       padding: const EdgeInsets.all(20),
                       decoration: const BoxDecoration(
                           shape: BoxShape.circle,
                         color: Color(0xff333333)


                       ),
                       child: Text("close",
                         style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                       ),
                     ),
                   ),
                   const SizedBox(height: 20,)
                 ],
               ),
             ),
           )

         ],
      ),
    );
  }
}
