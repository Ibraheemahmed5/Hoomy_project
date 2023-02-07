import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/single_prodect/relatid_list.dart';
import 'package:ionicons/ionicons.dart';

import '../help/text_style.dart';
import '../my_cart_page/prodects_counter.dart';
import 'colors/colors_list.dart';
import 'images/images_list.dart';

class PageModel extends StatelessWidget {
  const PageModel({Key? key, required this.prodects}) : super(key: key);
  final int prodects;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Container(
            height: MediaQuery.of(context).size.height / 11,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 0),
              child: Center(
                  child: ImagesList(
                prodect: prodects,
              )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    textDirection: TextDirection.rtl,
                    '${BackEnd.Prodects3[prodects].price.toString()}  د.ع',
                    style: Text_Style.getstyle(
                        fontsize: 25,
                        ColorText: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text("${BackEnd.Prodects3[prodects].title.substring(0,((BackEnd.Prodects3[prodects].title.toString().length)>15? 15: BackEnd.Prodects3[prodects].title.toString().length) )}",
                    style: Text_Style.getstyle(
                        fontsize: 25,
                        ColorText: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 0, right: 0, top: 15),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.only(
        //                 bottomRight: Radius.circular(35),
        //                 topRight: Radius.circular(35))),
        //         // child: ElevatedButton(
        //         //   onPressed:(){
        //         //     //prodects.makeAsFav();
        //         //   },
        //         //   //child:
        //         //   //prodects.isFav==false? Icon(Ionicons.heart , color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.heart, color: Color(0XFFFF0000)),
        //         //   style: ElevatedButton.styleFrom(
        //         //     elevation: 0,
        //         //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))),
        //         //     backgroundColor: Color(0XFFE6EAEE),
        //         //     fixedSize: const Size(26, 26),
        //         //   ),
        //         // ),
        //       ),
        //       //    ProdectCounter(prodect: prodects,button_color: Color(0XFFE6EAEE),container_color: Colors.white,left_border: 35,right_border: 0,)
        //     ],
        //   ),
        // ),
        Container(
          height: 100,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ListView(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(BackEnd.Prodects3[prodects].description,
                      style: Text_Style.getstyle(
                          fontsize: 16,
                          ColorText: Color(0xff2D7FA5),
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 40,
            child: Center(
                child: ColorList(
              prodect: prodects,
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20),
          child: Align(
              alignment: Alignment.centerRight,
              child: Text('أخرى',
                  style: Text_Style.getstyle(
                      fontsize: 25,
                      ColorText: Colors.black,
                      fontWeight: FontWeight.bold))),
        ),
        Container(
          height: MediaQuery.of(context).size.height/2.5,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 0),
            child: RelatedList(
              prodect: prodects,
            ),
          ),
        ),
      ],
    );
  }
}
