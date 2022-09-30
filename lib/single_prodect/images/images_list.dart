import 'package:flutter/cupertino.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/single_prodect/images/prodect_images.dart';

import '../../api/Api_calls.dart';
import '../../api/api_models.dart';
import '../test.dart';


class ImagesList extends StatelessWidget {
  const ImagesList({Key? key, required this.prodect}) : super(key: key);
  final int prodect;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:BackEnd.Prodects3[prodect].productImage.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio:160/ 180,
            ),
            itemBuilder: (BuildContext context, index) {
          return
              ProdectImages( p:prodect,im: index,);
            }));
  }
}
// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount:BackEnd.Prodects3.length,
// itemBuilder: (BuildContext context, int index) {
// return ProdectColors( p:prodect,color: index,);
// },
// );
