import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/single_prodect/related_cart.dart';
import '../../api/Api_calls.dart';
import '../../favorite_page/favorite_cart.dart';
import '../prodects/home_cart.dart';
import '../prodects/model.dart';

class CatigoriesList extends StatelessWidget {

  CatigoriesList({Key? key, required this.text,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:MediaQuery.of(context).size.width / 600,
            ),
            itemCount: BackEnd.Prodects3.length,
            itemBuilder: (BuildContext context, index) {
              if(BackEnd.Prodects3[index].category.title == text){
                return FavCart(
                  prodects: index,
                );}
              return SizedBox(height: 0,);
            }));

  }

}