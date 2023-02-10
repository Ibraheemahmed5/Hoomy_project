import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoomy_project1/single_prodect/Catigories_single_prodect/images/prodect_images.dart';
import 'package:hoomy_project1/single_prodect/images/prodect_images.dart';

import '../../../api/Api_calls.dart';



class ImagesList2 extends StatelessWidget {
  const ImagesList2({Key? key, required this.prodect}) : super(key: key);
  final int prodect;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    scrollDirection: Axis.horizontal,
    itemCount:BackEnd.categoryList[prodect].productImage.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio:160/ 180,
        ),
        itemBuilder: (BuildContext context, index) {
      return
          ProdectImages2( p:prodect,im: index,);
        });
  }
}
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount:BackEnd.Prodects3.length,
// itemBuilder: (BuildContext context, int index) {
// return ProdectColors( p:prodect,color: index,);
// },
// );
