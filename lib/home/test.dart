// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hoomy_project1/home/prodects/home_cart.dart';
//
// import 'cart_list.dart';
// import 'home_slider/slider.dart';
//
// class test2 extends StatefulWidget {
//   const test2({Key? key}) : super(key: key);
//
//   @override
//   State<test2> createState() => _test2State();
// }
//
// class _test2State extends State<test2> {
//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController searchController =
//         TextEditingController(text: "");
//     final RxBool isEmpty1 = true.obs;
//     final RxString text = searchController.text.obs;
//     return ListView(
//       children: [
//         Column(
//         children: [
//           if (text.value.isEmpty)
//             Padding(
//               padding: const EdgeInsets.only(bottom: 5),
//               child: Container(
//                 child: HomeSlider(),
//                 decoration: BoxDecoration(
//                     color: Colors.white, borderRadius: BorderRadius.circular(18)),
//               ),
//             ),
//         //
//         if (text.value.isEmpty)
//           Padding(
//             padding: const EdgeInsets.only(right: 20),
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Container(
//                 width: 100,
//                 height: 50,
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     "الشائع",
//                     style: GoogleFonts.inter(
//                         fontSize: 25,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//         if (text.value.isEmpty)
//           Flexible(
//             child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Color(0XFFE1F8FF),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30))),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
//                   child: CardsList(),
//                 )),
//           ),
//
//         if (text.value.isNotEmpty)
//           Flexible(
//             child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Color(0XFFE1F8FF),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30))),
//                 child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
//                     child: Container(
//                         child: GridView.count(
//                       crossAxisCount: 2,
//                       childAspectRatio: MediaQuery.of(context).size.width /
//                           ((MediaQuery.of(context).size.height) - 250),
//                       children:
//                              Prodect.Prodects.where((e) => e.name
//                             .toLowerCase()
//                             .contains(text.value.toLowerCase()))
//                             .map((e) => Cart(prodects: e))
//                             .toList(),
//                     )
//                     )
//                 )
//             ),
//           ),
//         ],
//         ),
//       ],
//     );
//   }
// }
