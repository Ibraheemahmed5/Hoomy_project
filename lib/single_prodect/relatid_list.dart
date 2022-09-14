import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/single_prodect/related_cart.dart';
import '../home/prodects/model.dart';

class RelatedList extends StatelessWidget {

   RelatedList({Key? key, required this.prodect,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  final Prodect prodect;

  @override
  Widget build(BuildContext context) {
    return
      Obx(() {
          return ListView(
                   scrollDirection: Axis.horizontal,
                    children:
                      Prodect.Prodects.where((a) =>
                      a.catigory.value.contains(prodect.catigory.value)
                          && a != prodect).map((e) =>
                          RelatedCart(prodects:e)).toList()
                 );
        }
      );
  }

  getTotalPrice(){
    Rx<double> total = 0.0.obs;
        total += prodect.price.value * prodect.quantity.value;
    return total.ceil().toString();
  }

}