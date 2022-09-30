// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hoomy_project1/api/Api_calls.dart';
// import 'package:hoomy_project1/single_prodect/related_cart.dart';
// import 'package:hoomy_project1/test.dart';
// import '../home/prodects/model.dart';
//
// class test2 extends StatelessWidget {
//
//   test2({Key? key}) : super(key: key);
//   static PageController controller = PageController();
//   static RxInt currentPage = 0.obs;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//     Scaffold(
//       body:
//       Column(
//         children: [
//           Expanded(
//             child: ListView(
//                          scrollDirection: Axis.vertical,
//                           children:
//                               BackEnd.Prodects3.map((a) => test(b: a)).toList()),
//           ),
//         ],
//       ),
//     );
//     // Prodect.Prodects.where((a) =>
//     // a.catigory.value.contains(prodect.catigory.value)
//     //     && a != prodect).map((e) =>
//     //     RelatedCart(prodects:e)).toList()
//
//   }
//
// // getTotalPrice(){
// //   Rx<double> total = 0.0.obs;
// //       total += prodect.price.value * prodect.quantity.value;
// //   return total.ceil().toString();
// // }
//
// }