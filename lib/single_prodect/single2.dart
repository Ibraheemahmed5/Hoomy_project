import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/single_prodect/relatid_list.dart';
import 'package:ionicons/ionicons.dart';
import '../home/prodects/model.dart';
import '../my_cart_page/make_order_button.dart';
import '../my_cart_page/prodects_counter.dart';
import '../profile_page/blue_logo.dart';
import 'colors/colors_list.dart';
import 'images/images_list.dart';

class SingleProdect2 extends StatefulWidget {
  const SingleProdect2({Key? key, required this.prodects}) : super(key: key);
  final Prodect prodects;

  @override
  State<SingleProdect2> createState() => _SingleProdect2State(prodects);
}

class _SingleProdect2State extends State<SingleProdect2> {
  final Prodect prodects;
  _SingleProdect2State(this.prodects);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hoomy_logo_blue(onPressed: () {  },),
            Expanded(
              child: ListView(
                children: [
                  Container(
                      height: 255,
                      width: 310,
                      child: Image.asset(prodects.image_link[1],fit: BoxFit.fill,)
                  ),
                  Container(
                    height: 80,
                    child: Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child:Center(child: ImagesList(prodect: prodects,)),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("د.ع"+'${prodects.price.value.toString()}',style: GoogleFonts.inter(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold)),
                        Text(prodects.name.value,style: GoogleFonts.inter(fontSize: 21,color: Colors.black,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,right: 0,top: 15),
                    child: Obx((){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),topRight: Radius.circular(35))
                            ),
                            child: ElevatedButton(
                              onPressed:(){
                                prodects.makeAsFav();
                              },
                              child:prodects.isFav==false? Icon(Ionicons.heart , color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.heart, color: Color(0XFFFF0000)),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))),
                                backgroundColor: Color(0XFFE6EAEE),
                                fixedSize: const Size(26, 26),
                              ),
                            ),
                          ),
                          ProdectCounter(prodect: prodects,button_color: Color(0XFFE6EAEE),container_color: Colors.white,left_border: 35,right_border: 0,)
                        ],
                      );
                    }
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                          child:ListView(
                            children: [
                              Text(prodects.desc.value,style: TextStyle(fontSize: 16,color: Color(0xff2D7FA5)),)
                            ],
                          ) ,
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 40,
                      child: Expanded(
                        child:Center(child: ColorList(prodect: prodects,)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text('أخرى',style: GoogleFonts.inter(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 320,
                    child: Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20,left: 20,right: 0),
                          child:RelatedList(prodect: prodects,) ,
                        )
                    ),
                  ),
                ],
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
        ),
      ),
    );
  }
}

