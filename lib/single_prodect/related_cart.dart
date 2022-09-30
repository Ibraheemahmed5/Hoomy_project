import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/api/api_Url.dart';
import 'package:hoomy_project1/single_prodect/single_prodect_main.dart';
import 'package:ionicons/ionicons.dart';
import '../api/Api_calls.dart';
import '../home/prodects/model.dart';


class RelatedCart extends StatelessWidget {
  const RelatedCart({Key? key, required this.prodects}) : super(key: key);
  final int prodects;
  @override
  Widget build(BuildContext context) {
    return
          GestureDetector(
          onTap: (){
        //    prodects.makeAsClicked();
            Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                builder: (BuildContext context) =>  SingleProdect(prodects: BackEnd.Prodects3[prodects],)));
       //     Get.to(SingleProdect(prodects: prodects));
           // prodects.makeAsClicked();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20,right:20),
            child: Container(
              height: 276,
              width: 198,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Color(0XFFE1F8FF),
                  borderRadius: BorderRadius.circular(18)),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child:
                        Container(
                          // child: ElevatedButton(
                          //   onPressed:(){
                          //   //  prodects.makeAsFav();
                          //   },
                          // //  child:==false? Icon(Ionicons.heart , color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.heart, color: Color(0XFFFF0000)),
                          //   style: ElevatedButton.styleFrom(
                          //     elevation: 0,
                          //     backgroundColor: Color(0XFFE7E7E7),
                          //     fixedSize: const Size(26, 26),
                          //     shape: const CircleBorder(),
                          //   ),
                          // ),
                        ),
                      ),
                      if( BackEnd.Prodects3[prodects].isAvailable== false)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                              ' غير متوفر',
                              style: GoogleFonts.inter(fontSize: 14,color: Colors.red,fontWeight: FontWeight.bold)
                          ),
                        ),
                    ],
                  ),
                  Container(
                      width: 180,
                      height: 128,
                      margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                      color: Colors.white,
                      child: Image.network(ApiConstants.Domain+BackEnd.Prodects3[prodects].banner)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if( BackEnd.Prodects3[prodects].isAvailable== true)
                        Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          // child: ElevatedButton(
                          //   onPressed: () {
                          //     // prodects.addToCart();
                          //     // prodects.deleteFromCart();
                          //   },
                          //   child:,
                          //   prodects.add==false? Icon(Ionicons.cart_outline, color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.cart , color:Color.fromRGBO(69, 185, 238, 1)),
                          //   style: ElevatedButton.styleFrom(
                          //     elevation: 0,
                          //     backgroundColor: Color(0XFFE7E7E7),
                          //     fixedSize: const Size(26, 26),
                          //     shape: const CircleBorder(),
                          //   ),
                          ),
                        ),
                      ]),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                      BackEnd.Prodects3[prodects].title,
                                      style: GoogleFonts.inter(fontSize: 19,color: Colors.black)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                    'د.ع'+'${BackEnd.Prodects3[prodects].price}',
                                    style: GoogleFonts.inter(fontSize: 17,color: Colors.black
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          );
  }
}

/**/