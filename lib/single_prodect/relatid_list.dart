import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/single_prodect/related_cart.dart';
import '../home/prodects/model.dart';

class RelatedList extends StatelessWidget {

   RelatedList({Key? key, required this.prodect,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  final int prodect;
  @override
  Widget build(BuildContext context) {
    BackEnd.Get_Related_List(BackEnd.Prodects3[prodect].category.title );
    return
      GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:BackEnd.relatidList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio:110/ 90,
            crossAxisCount: 1,
          ),
          itemBuilder: (BuildContext context, index) {
            return RelatedCart(prodects: index);
          });
      // ListView(
      //              scrollDirection: Axis.horizontal,
      //               children:
      //                   BackEnd.Prodects3.where((e) => e.category == BackEnd.Prodects3[prodect].category && e != BackEnd.Prodects3[prodect]).map((a) => RelatedCart(prodects: a)).toList());
                      // Prodect.Prodects.where((a) =>
                      // a.catigory.value.contains(prodect.catigory.value)
                      //     && a != prodect).map((e) =>
                      //     RelatedCart(prodects:e)).toList()

  }

  // getTotalPrice(){
  //   Rx<double> total = 0.0.obs;
  //       total += prodect.price.value * prodect.quantity.value;
  //   return total.ceil().toString();
  // }

}