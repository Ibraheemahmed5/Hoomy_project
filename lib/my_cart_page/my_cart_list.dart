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
  static List cartList = [];
  @override
  Widget build(BuildContext context) {
    BackEnd.Get_cart();
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: MediaQuery.of(context).size.width / 215,
            ),
            itemCount: MyCardsList.cartList.length,
            itemBuilder: (BuildContext context, index) {
              if (MyCardsList.cartList[index].inCart == true) {
                return Cart1(
                  prodects: index,
                );
              }
              return SizedBox(
                height: 0,
                width: 0,
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
    for(int i = 0 ; i < MyCardsList.cartList.length; i++){
    if (MyCardsList.cartList[i].inCart == true) {
      //MyCardsList.cartList[prodect].quantity * MyCardsList.cartList[i].price
      total += MyCardsList.cartList[i].price * MyCardsList.cartList[i].quantity;
    }
    }
    return total;

  }
}
