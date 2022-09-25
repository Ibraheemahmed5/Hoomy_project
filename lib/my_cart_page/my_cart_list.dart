import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/my_cart_page/cart.dart';
import '../home/prodects/model.dart';

class MyCardsList extends StatelessWidget {
  const MyCardsList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return
        ListView(
          // children:
          // ApiCall.Prodects2.where((e) => e!.add.value && e.delete_from_cart.value).map((e) => Cart1(prodects:e)).toList(),
          children: []
        );
    }
    );
  }

    getCartTotalPrice(){
      Rx<double> total = 0.0.obs;
      if(Prodect.Prodects.isNotEmpty) {
        Prodect.Prodects.where((e) => e.add.value).forEach((element){
          total += element.price.value * element.quantity.value;
        });
      }
      return total.ceil().toString();
  }
}