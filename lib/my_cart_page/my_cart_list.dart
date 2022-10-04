import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/my_cart_page/cart.dart';
import '../home/prodects/model.dart';

class MyCardsList extends StatelessWidget {
  const MyCardsList({
    Key? key,
  }) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: MediaQuery.of(context).size.width / 215,
            ),
            itemCount: BackEnd.Prodects_cart.length,
            itemBuilder: (BuildContext context, index) {
              return Cart1(
                prodects: index,
              );
            }));
    // Obx((){
    //   return
    //     ListView(
    //       // children:
    //       // ApiCall.Prodects2.where((e) => e!.add.value && e.delete_from_cart.value).map((e) => Cart1(prodects:e)).toList(),
    //       children: [
    //                  ]
    //     );
    // }
    // );
  }

  Rx<double> getCartTotalPrice() {
    Rx<double> total = 0.0.obs;
    if (BackEnd.Prodects_cart.isNotEmpty) {
      BackEnd.Prodects_cart.forEach((element) {
        total += (element.product.price * element.quantity);
      });
    }
    return total;
  }
}
