import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:unicons/unicons.dart';
import 'package:get/get.dart';
import 'package:whatsapp/whatsapp.dart';
import '../favorite_page/favorite_page_main.dart';
import '../home/cart_list.dart';
import '../home/home_main_page.dart';
import '../home/prodects/model.dart';
import '../profile_page/blue_logo.dart';
import '../profile_page/profile_main_page.dart';
import '../whatsapp/whatsapp_main_page.dart';
import 'NavigationBar_cart.dart';
import 'make_order_button.dart';
import 'my_cart_list.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

late final Prodect prodect;

class _MyCartState extends State<MyCart> {
  String text =
      "\nمرحباً ارغب بشراء المنتجات الاتية :     \n\n ${Prodect.Prodects.where((e) => e.add.value).map((e) => ({
            "اسم الامنتج :${e.name.value}\n"
                "العدد :${e.quantity.value}\n"
                "السعر الكلي  :${" 2000000 " "دينار عراقي"}\n"
                "\n"
                "\n"
          }))}";

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
                onPressed: () {},
              ),
              Text(
                'السلة',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Expanded(child: MyCardsList()),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(() {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          ' ${MyCardsList().getCartTotalPrice()}  :السعر الكلي',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Button2(
                        text: 'اتمام الطلب',
                        onPressed: () {
                          setState(() {
                            print(prodect.quantity.value);
                            print(prodect.name.value);
                          });
                          Get.to(whatsapp_main_page(
                            text: text,
                          ));
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar_cart());
  }
}
