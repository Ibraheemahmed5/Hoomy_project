import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/Api_calls.dart';
import '../api/api_models.dart';
import '../home/prodects/model.dart';
import 'favorite_cart.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  @override
  Widget build(BuildContext context) {
    BackEnd.Get_Fav_List();
    return  Container(
      child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio:MediaQuery.of(context).size.width / 550,
    ),
    itemCount: BackEnd.favList.length,
    itemBuilder: (BuildContext context, index) {
      if(BackEnd.favList[index].isFav == true){
        return FavCart(
          prodects: index,
        );}
      return SizedBox(height: 0,width: 0,);
      }
      )
    );
  }
}