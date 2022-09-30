import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/my_cart_page/prodects_counter.dart';
import 'package:ionicons/ionicons.dart';
import '../api/Api_calls.dart';
import '../home/prodects/model.dart';
import '../single_prodect/single_prodect_main.dart';


class SearchCart extends StatelessWidget {
  const SearchCart({Key? key, required this.prodects}) : super(key: key);


  final int prodects;
  @override
  Widget build(BuildContext context) {
    return
      Obx((){
        return
          GestureDetector(
              onTap: (){
                // prodects.makeAsClicked();
                // Get.to(SingleProdect(prodects: prodects,));
              },
              child:Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                child: Container(
                  height: 170,
                  width:  MediaQuery.of(context).size.width ,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      color: Color(0XFFE1F8FF),
                      borderRadius: BorderRadius.circular(18)),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child:Container(
                                        width: 36,
                                        child:FloatingActionButton(
                                          elevation: 0,
                                          backgroundColor: Color(0XFFE7E7E7),
                                          onPressed: (){
                                        //    prodects.makeAsFav();
                                          },
                                      //    child:prodects.isFav==false? Icon(Ionicons.heart , color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.heart, color: Color(0XFFFF0000)),
                                        ),
                                      ),
                                    ),
                                 //   if(prodects.available == true)
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 0),
                                        child: Text(
                                            ' غير متوفر',
                                            style: GoogleFonts.inter(fontSize: 14,color: Colors.red,fontWeight: FontWeight.bold)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  child: Text(
                                      BackEnd.Prodects3[prodects].title,
                                      style: GoogleFonts.inter(fontSize: 19,color: Colors.black,fontWeight:FontWeight.bold)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    "د.ع "+'${BackEnd.Prodects3[prodects].price}',
                                    style: GoogleFonts.inter(fontSize: 18,color: Colors.black

                                    )
                                ),),
                         //     if(prodects.available == false)
                                Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  width: 36,
                                  child:FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: Color(0XFFE7E7E7),
                                    onPressed: (){
                                  //    prodects.addToCart();
                                    },
                                 //   child:prodects.add==false? Icon(Ionicons.cart_outline, color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.cart , color:Color.fromRGBO(69, 185, 238, 1)),
                                  ),
                                ),
                              ),
                            ]
                        ),),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            width: 155,
                            height: 135,
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            margin: const EdgeInsets.only( right: 10, left: 10),
                            child: Image.asset(Prodect.ImagesList[0])),
                      )
                    ],
                  ),
                ),
              ));
      },
      );

  }
}

/**/