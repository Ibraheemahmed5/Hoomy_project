import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/single_prodect/add_to_cart_button.dart';
import 'package:hoomy_project1/single_prodect/page_model.dart';
import 'package:hoomy_project1/single_prodect/relatid_list.dart';
import 'package:hoomy_project1/single_prodect/test.dart';
import 'package:ionicons/ionicons.dart';
import '../Hoomy_main_page.dart';
import '../api/Api_calls.dart';
import '../help/text_style.dart';
import '../home/catigories_page/test.dart';
import '../home/home_main_page.dart';
import '../home/prodects/model.dart';
import '../home/test.dart';
import '../my_cart_page/make_order_button.dart';
import '../my_cart_page/my_cart_list.dart';
import '../my_cart_page/prodects_counter.dart';
import '../profile_page/blue_logo.dart';
import 'colors/colors_list.dart';
import 'images/images_list.dart';

class SingleProdect extends StatefulWidget {
  const SingleProdect({Key? key, required this.prodects}) : super(key: key);
  final int prodects;

  @override
  State<SingleProdect> createState() => _SingleProdectState(prodects);
}

class _SingleProdectState extends State<SingleProdect> {
  final int prodects;
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
          Hoomy_logo_blue(
            onPressed: () {
              Get.to(Hoomy_main_page(index1: 0,));
              //prodects.makeAsClicked();
            },
          ),
          Expanded(
            child: ListView(
            children: [
              Center(
                  child:  test( p: prodects,im:0)),
              PageModel(
                prodects: prodects,
              )
            ]
                ),
          ),

        ],
      )),


      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 4,
                blurRadius: 3,
                offset: Offset(0, 0), // changes x,y position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25))),
        child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if( BackEnd.Prodects3[prodects].isAvailable== false)
                Text(
                    ' غير متوفر',
                    style: Text_Style.getstyle(
                        fontsize: 20,
                        ColorText: Colors.red,
                        fontWeight: FontWeight.bold)
                ),
              if( BackEnd.Prodects3[prodects].isAvailable== true)
                Text(
                  textDirection: TextDirection.rtl,

                  "${BackEnd.Prodects3[prodects].price.toString()}  د.ع",
                  // ' ${RelatedList(
                  //   prodect: prodects,
                  // ).getTotalPrice()}  :السعر الكلي',
                  style:
                  Text_Style.getstyle(
                      fontsize: 22,
                      ColorText: Colors.black,
                      fontWeight: FontWeight.bold)
                ),
              //   if(prodects.available == false)
              if (BackEnd.Prodects3[prodects].isAvailable == true)
                Button3(
                text: 'أضافة الى السلة ',
                onPressed: () {
                  if (BackEnd.Prodects3[prodects].inCart == false){
                    BackEnd.Prodects3[prodects].inCart = true;
                    BackEnd.Prodects3[prodects].quantity = 1;
                    MyCardsList.cartList.add(BackEnd.Prodects3[prodects]);
                  }
                  else{
                    BackEnd.Prodects3[prodects].inCart = false;
                    MyCardsList.cartList.remove(BackEnd.Prodects3[prodects]);

                  }

                  print(BackEnd.Prodects3[prodects].inCart);
                  print(MyCardsList.cartList);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

