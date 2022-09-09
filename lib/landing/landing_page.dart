import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
     SafeArea(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           children:[
              Stack(
                children: [
                Image.asset('photo/11.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('photo/hoomy2.png',width: 210,height: 100),
                      ],
                    ),
                  )
                ],
              ),
             Padding(
               padding: const EdgeInsets.only(top: 100),
                 child: Column(
                   children: [
                       Button1(
                         text: 'تسجيل دخول', onPressed: () {
                           print("تسجيل الدخول");
                       },
                       ) ,
                       Button1(
                         text: 'انشاء حساب',
                         onPressed: () {   print("انشاء حساب");},
                       ),
                       RichText(text: TextSpan(text: 'الدخول كزائر',
                           recognizer: TapGestureRecognizer()
                             ..onTap = () {},
                           style: GoogleFonts.inter(fontSize: 20,color: Colors.black),))
                 ],
           ),
             ),
           ]
         ),
       ),
     )
    );
  }
}












































































































































