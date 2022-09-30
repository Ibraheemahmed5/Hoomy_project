import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/single_prodect/related_cart.dart';
import '../../api/Api_calls.dart';
import '../../api/api_models.dart';
import '../../favorite_page/favorite_cart.dart';
import '../prodects/home_cart.dart';
import '../prodects/model.dart';
import 'catigory_cart.dart';

class CatigoriesList extends StatelessWidget {
  const CatigoriesList({super.key, required this.text});
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  final String text;


  @override
  Widget build(BuildContext context) {
    BackEnd.Get_Category_List(text);
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:MediaQuery.of(context).size.width / 600,
            ),
            itemCount: BackEnd.categoryList.length,
            itemBuilder: (BuildContext context, index) {
                return CatCart(
                  prodects: index,
                );
            }));

          // GridView.count(
          //   shrinkWrap: true,
          //     physics: ScrollPhysics(),
          //      crossAxisCount: 2,
          //     childAspectRatio: MediaQuery.of(context).size.width / 550,
          //   children:
          //   BackEnd.Prodects3.where((e) => e.category == text).map((e) => Cart(prodects:e)).toList(),
          // );
  }

}