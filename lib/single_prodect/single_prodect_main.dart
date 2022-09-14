import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/single_prodect/page_model.dart';
import 'package:hoomy_project1/single_prodect/relatid_list.dart';
import 'package:ionicons/ionicons.dart';
import '../home/home_main_page.dart';
import '../home/prodects/model.dart';
import '../my_cart_page/make_order_button.dart';
import '../my_cart_page/prodects_counter.dart';
import '../profile_page/blue_logo.dart';
import 'colors/colors_list.dart';
import 'images/images_list.dart';

class SingleProdect extends StatefulWidget {
  const SingleProdect({Key? key, required this.prodects}) : super(key: key);
  final Prodect prodects;

  @override
  State<SingleProdect> createState() => _SingleProdectState(prodects);
}

class _SingleProdectState extends State<SingleProdect> {
  final Prodect prodects;
  _SingleProdectState(this.prodects);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hoomy_logo_blue(onPressed: () { Get.to(HomeMainPage());
                  //prodects.makeAsClicked();
                  },),
                Expanded(
                  child: ListView(
                    children:[
                      PageModel(prodects: prodects)
                    ]
                   // Prodect.Prodects.where((p) => p.is_clicked.value).map((e) => PageModel(prodects: e)).toList(),
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes x,y position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(25),topRight: Radius.circular(25))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Obx(() {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(' ${RelatedList(prodect: prodects,).getTotalPrice()}  :السعر الكلي', style: TextStyle(
                             fontSize: 22, fontWeight: FontWeight.bold),),
                        );
                      }
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Button2(text: 'اتمام الطلب', onPressed: () {  },),
                      )
                    ],
                  ),
                )
              ],
            )
      ),
    );
  }
}

