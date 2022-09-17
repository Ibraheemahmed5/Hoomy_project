import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/my_cart_page/prodects_counter.dart';

import '../home/prodects/model.dart';
import '../single_prodect/single_prodect_main.dart';


class Cart1 extends StatelessWidget {
  const Cart1({Key? key, required this.prodects}) : super(key: key);


  final Prodect prodects;
  @override
  Widget build(BuildContext context) {
    return
      Obx((){
        return
          GestureDetector(
            onTap: (){
          prodects.makeAsClicked();
          Get.to(SingleProdect(prodects: prodects,));
        },
        child:Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Container(
            height: 165,
            width: 378,
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
                        child: Align(
                          alignment: Alignment.topLeft,
                          child:Container(
                              width: 36,
                              child:FloatingActionButton(
                                elevation: 0,
                                backgroundColor: Color(0XFFE7E7E7),
                                onPressed: (){
                                  prodects.deleteFromCart();
                                  prodects.addToCart();
                                },
                                child:Icon(Icons.clear_rounded,color: Colors.black,),
                              ),
                          ),
                          // child: ElevatedButton(
                          //   onPressed: () {},
                          //   child:Icon( prodects.isFav==false? Icons.favorite : Icons.favorite, color: Color.fromRGBO(69, 185, 238, 1)),
                          //   style: ElevatedButton.styleFrom(
                          //     elevation: 0,
                          //     backgroundColor: Color(0XFFE7E7E7),
                          //     fixedSize: const Size(26, 26),
                          //     shape: const CircleBorder(),
                          //   ),
                          // ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Text(
                              prodects.name.value,
                              style: GoogleFonts.inter(fontSize: 19,color: Colors.black,fontWeight:FontWeight.bold )
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                              "د.ع "+'${prodects.price.value.toString()}',
                              style: GoogleFonts.inter(fontSize: 18,color: Colors.black

                              )
                          ),),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10,left: 10),
                        child: ProdectCounter( prodect: prodects,container_color: Colors.white,button_color: Color(0XFFE7E7E7),left_border: 35,right_border: 35,),
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