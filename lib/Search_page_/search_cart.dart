import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/my_cart_page/prodects_counter.dart';
import 'package:ionicons/ionicons.dart';
import '../api/Api_calls.dart';
import '../api/api_Url.dart';
import '../home/prodects/model.dart';
import '../my_cart_page/my_cart_list.dart';
import '../single_prodect/single_prodect_main.dart';


class SearchCart extends StatefulWidget {
  const SearchCart({Key? key, required this.prodects}) : super(key: key);


  final int prodects;

  @override
  State<SearchCart> createState() => _SearchCartState();
}

class _SearchCartState extends State<SearchCart> {
  @override
  Widget build(BuildContext context) {
    RxBool x = false.obs;
    return

          GestureDetector(
              onTap: (){
                // prodects.makeAsClicked();
                // Get.to(SingleProdect(prodects: prodects,));
                Get.to(SingleProdect(prodects: widget.prodects,),);

              },
              child:Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                child: Container(
                  height: 180,
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
                                      child:Padding(
                                        padding:  EdgeInsets.only(top: 5),
                                        child: ElevatedButton(
                                          onPressed:(){
                                            setState(() {});
                                            if (BackEnd.Prodects3[widget.prodects].isFav == false)
                                              BackEnd.Prodects3[widget.prodects].isFav = true;
                                            else
                                              BackEnd.Prodects3[widget.prodects].isFav = false;
                                          },
                                          child: BackEnd.Prodects3[widget.prodects].isFav==false? Icon(Ionicons.heart , color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.heart, color: Color(0XFFFF0000)),
                                          //     child:Icon(Ionicons.heart , color: Colors.red) ,
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:Color(0XFFE7E7E7),
                                            fixedSize: const Size(26, 26),
                                            shape: const CircleBorder(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if(BackEnd.Prodects3[widget.prodects].isAvailable == false)
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
                                      "${BackEnd.Prodects3[widget.prodects].title.substring(0, BackEnd.Prodects3[widget.prodects].title.toString().length>5?5:BackEnd.Prodects3[widget.prodects].title.toString().length)}...",
                                      textDirection: TextDirection.rtl,
                                      style: GoogleFonts.inter(fontSize: 19,color: Colors.black,fontWeight:FontWeight.bold)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    "${BackEnd.Prodects3[widget.prodects].price.toString().substring(0, BackEnd.Prodects3[widget.prodects].price.toString().length>5?5:BackEnd.Prodects3[widget.prodects].price.toString().length)}..."+"د.ع ",
                                    textDirection: TextDirection.rtl,
                                    style: GoogleFonts.inter(fontSize: 18,color: Colors.black
                                    )
                                ),),
                         //     if(prodects.available == false)
                                Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      setState(() {});

                                      print(BackEnd.Prodects3[widget.prodects].inCart);

                                      if (BackEnd.Prodects3[widget.prodects].inCart == false){
                                        BackEnd.Prodects3[widget.prodects].inCart = true;
                                        BackEnd.Prodects3[widget.prodects].quantity = 1;
                                        MyCardsList.cartList.add(BackEnd.Prodects3[widget.prodects]);
                                      }
                                      else{
                                        BackEnd.Prodects3[widget.prodects].inCart = false;
                                        MyCardsList.cartList.removeAt(widget.prodects);
                                      }

                                      print(BackEnd.Prodects3[widget.prodects].inCart);
                                      print(MyCardsList.cartList);
                                    },
                                    child: BackEnd.Prodects3[widget.prodects].inCart == false
                                        ?
                                    Icon(Ionicons.cart_outline , color:Color.fromRGBO(69, 185, 238, 1)):
                                    Icon(Ionicons.cart , color:Color.fromRGBO(69, 185, 238, 1)),
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Color(0XFFE7E7E7),
                                      fixedSize: const Size(26, 26),
                                      shape: const CircleBorder(),
                                    ),
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
                          child: Image.network(ApiConstants.Domain+BackEnd.Prodects3[widget.prodects].productImage[0].image,fit: BoxFit.contain),
                      ))
                    ],
                  ),
                ),
              ));


  }
}

/**/