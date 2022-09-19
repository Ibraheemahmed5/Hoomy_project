import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';
import 'package:iconsax/iconsax.dart';
import '../home/prodects/model.dart';
import 'package:ionicons/ionicons.dart';

import '../single_prodect/single_prodect_main.dart';


class FavCart extends StatelessWidget {
  const FavCart({Key? key, required this.prodects}) : super(key: key);

  final Prodect prodects;
  @override
  Widget build(BuildContext context) {
    return
      Obx((){
        return
          GestureDetector(
              onTap: (){
                prodects.makeAsClicked();
                Get.to(SingleProdect(prodects: prodects,),);
              },
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: Color(0XFFE1F8FF),
                borderRadius: BorderRadius.circular(18)),
            child:Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child:
                  Container(
                    child: ElevatedButton(
                      onPressed:(){
                        prodects.makeAsFav();
                      },
                      child:prodects.isFav==false? Icon(Ionicons.heart , color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.heart, color: Color(0XFFFF0000)),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        fixedSize: const Size(26, 26),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 180,
                    height: 128,
                    margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                    color: Colors.white,
                    child:Image.asset(Prodect.ImagesList[0])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            prodects.addToCart();
                            prodects.deleteFromCart();
                          },
                          child:prodects.add==false? Icon(Ionicons.cart_outline, color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.cart , color:Color.fromRGBO(69, 185, 238, 1)),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            fixedSize: const Size(26, 26),
                            shape: const CircleBorder(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    prodects.name.value,
                                    style: GoogleFonts.inter(fontSize: 19,color: Colors.black)
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                  'د.ع'+'${prodects.price.value}',
                                  style: GoogleFonts.inter(fontSize: 17,color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),);
      },

      );
  }
}
/**/