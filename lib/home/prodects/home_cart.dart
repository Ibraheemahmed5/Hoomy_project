import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:ionicons/ionicons.dart';
import '../../api/api_Url.dart';
import '../../api/api_models.dart';
import '../../favorite_page/favorite_list.dart';
import '../../help/text_style.dart';
import '../../my_cart_page/my_cart_list.dart';
import '../../single_prodect/single_prodect_main.dart';
import 'model.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key, required this.prodects}) : super(key: key);
  final int prodects;

  @override
  State<Cart> createState() => _CartState(prodects);
}

class _CartState extends State<Cart> {
  final int prodects;

  _CartState(this.prodects);

  @override
  Widget build(BuildContext context) {
    int len = BackEnd.Prodects3[prodects].title.length;
    return GestureDetector(
      onTap: () {
        setState(() {
          //api!.makeAsClicked();
          Get.to(SingleProdect(
            prodects: prodects,
          ));
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(

          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18)),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        if (BackEnd.Prodects3[prodects].isFav == false){
                          BackEnd.Prodects3[prodects].isFav = true;
                          FavoriteList.favList.add(BackEnd.Prodects3[prodects]);}
                        else{
                          BackEnd.Prodects3[prodects].isFav = false;
                          FavoriteList.favList.remove(BackEnd.Prodects3[prodects]);}
                        print(FavoriteList.favList);
                        print(BackEnd.favList);
                      },
                      child: BackEnd.Prodects3[prodects].isFav == false
                          ? Icon(Ionicons.heart,
                              color: Color.fromRGBO(69, 185, 238, 1))
                          : Icon(Ionicons.heart, color: Color(0XFFFF0000)),
                      //     child:Icon(Ionicons.heart , color: Colors.red) ,
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0XFFE7E7E7),
                        fixedSize: const Size(26, 26),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ),
                  if (BackEnd.Prodects3[prodects].isAvailable == false)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(' غير متوفر',
                          style: Text_Style.getstyle(fontsize: MediaQuery.of(context).size.width/30, ColorText: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                ],
              ),










              if (BackEnd.Prodects3[prodects].isAvailable == true)
                Container(

                  height: MediaQuery.of(context).size.height/6,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        ApiConstants.Domain +
                            BackEnd.Prodects3[prodects].productImage[0].image,
                        fit: BoxFit.contain),
                  ),
                ),
              if (BackEnd.Prodects3[prodects].isAvailable == false)
                Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                    child: Image.network(
                        ApiConstants.Domain +
                            BackEnd.Prodects3[prodects].productImage[0].image,
                        fit: BoxFit.fitWidth)),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackEnd.Prodects3[prodects].isAvailable == true?
                    Container(
                      child: ElevatedButton(
                        onPressed: () async {
                    /*        await BackEnd.add_to_card(
                                id: BackEnd.Prodects3[prodects].id);*/
                            //BackEnd.Prodects3[prodects].inCart = false;
                            setState(() {});

                            print(BackEnd.Prodects3[prodects].inCart);

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
                          child: BackEnd.Prodects3[prodects].inCart == false
                              ? Icon(Ionicons.cart_outline,
                              color: Color.fromRGBO(69, 185, 238, 1))
                              : Icon(Ionicons.cart, color: Color.fromRGBO(69, 185, 238, 1)),
                          //     child:Icon(Ionicons.heart , color: Colors.red) ,
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0XFFE7E7E7),
                            fixedSize: const Size(26, 26),
                            shape: const CircleBorder(),
                          ),
                       /*   child: Icon(Ionicons.cart,
                              color: Color.fromRGBO(69, 185, 238, 1)),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0XFFE7E7E7),
                            fixedSize: const Size(26, 26),
                            shape: const CircleBorder(),
                          ),*/
                        ),
                      ) :Container(
                    width: MediaQuery.of(context).size.width/5,
                    height: MediaQuery.of(context).size.height/15,

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/4.5,
                      //color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                                textDirection: TextDirection.rtl,
                                "${BackEnd.Prodects3[prodects].title.substring(0, BackEnd.Prodects3[prodects].title.toString().length > 6 ?6:BackEnd.Prodects3[prodects].title.toString().length)}..",
                                style: Text_Style.getstyle(
                                    fontsize: MediaQuery.of(context).size.width/28,
                                    ColorText: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                                textDirection: TextDirection.rtl,
                                '${BackEnd.Prodects3[prodects].price} د.ع ',
                                style: Text_Style.getstyle(fontsize: MediaQuery.of(context).size.width/35, ColorText: Colors.black, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 5,
                  )



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
/**/
