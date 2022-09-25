import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:ionicons/ionicons.dart';
import '../../api/api_models.dart';
import '../../single_prodect/single_prodect_main.dart';
import 'model.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key, required this.prodects}) : super(key: key);
  final ProductModel prodects;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
     ApiCall? api;

    return
      Obx((){
        return GestureDetector(
          onTap: (){
            setState(() {
              api!.makeAsClicked();
             // Get.to(SingleProdect( prodects: widget.prodects,));
            });

          },
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18)),
              child:Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: 5),
                          child: ElevatedButton(
                            onPressed:(){
                              api!.makeAsFav();
                            },
                            child:api!.isFav==false? Icon(Ionicons.heart , color: Colors.purpleAccent) :  Icon(Ionicons.heart, color: Colors.limeAccent),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.red,//Color(0XFFE7E7E7),
                              fixedSize: const Size(26, 26),
                              shape: const CircleBorder(),
                            ),
                          ),
                        ),
                        if(widget.prodects.isAvailable == true)
                          Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                              ' غير متوفر',
                              style: GoogleFonts.inter(fontSize: 14,color: Colors.red,fontWeight: FontWeight.bold)
                          ),
                        ),


                      ],
                    ),
                  ),
                  if(widget.prodects.isAvailable == false)
                    Container(
                        height: 128,
                        width:MediaQuery.of(context).size.width-50 ,
                      margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                      color: Colors.white,
                      child: Image.network("http://127.0.0.1:8000"+Prodect.ImagesList[0])),
                  if(widget.prodects.isAvailable == true)
                    Container(
                      width: 150,
                      height: 110,
                      margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                      color: Colors.white,
                      child: Image.network("http://127.0.0.1:8000"+Prodect.ImagesList[0])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(widget.prodects.isAvailable == false)
                        Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 5),
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {
                              api!.addToCart();
                              api!.deleteFromCart();
                            },
                            child:api!.add==false? Icon(Ionicons.cart_outline, color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.cart , color:Color.fromRGBO(69, 185, 238, 1)),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(0XFFE7E7E7),
                              fixedSize: const Size(26, 26),
                              shape: const CircleBorder(),
                            ),
                          ),
                        ),
                      ),
                      // if(widget.prodects.available == true)
                      //   Padding(
                      //   padding: const EdgeInsets.only(top: 45),
                      //   child: Container(
                      //     child: ElevatedButton(
                      //       onPressed: () {
                      //         widget.prodects.addToCart();
                      //         widget.prodects.deleteFromCart();
                      //       },
                      //       child:widget.prodects.add==false? Icon(Ionicons.cart_outline, color: Color.fromRGBO(69, 185, 238, 1)) :  Icon(Ionicons.cart , color:Color.fromRGBO(69, 185, 238, 1)),
                      //       style: ElevatedButton.styleFrom(
                      //         elevation: 0,
                      //         backgroundColor: Color(0XFFE7E7E7),
                      //         fixedSize: const Size(26, 26),
                      //         shape: const CircleBorder(),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                      widget.prodects.title!,
                                      style: GoogleFonts.inter(fontSize: 19,color: Colors.black)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                    'د.ع'+'${widget.prodects.price}',
                                    style: GoogleFonts.inter(fontSize: 17,color: Colors.black

                                    )),
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
          ),
        );
      },
      );
  }
}
/**/