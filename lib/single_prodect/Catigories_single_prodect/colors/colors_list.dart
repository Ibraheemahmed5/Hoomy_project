import 'package:flutter/cupertino.dart';
import 'package:hoomy_project1/single_prodect/Catigories_single_prodect/colors/prodect_colors.dart';
import '../../../api/Api_calls.dart';



class ColorList2 extends StatelessWidget {
  const ColorList2({Key? key, required this.prodect}) : super(key: key);
  final int prodect;
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:BackEnd.categoryList[prodect].colors.length,
        itemBuilder: (BuildContext context, int index) {
            return ProdectColors2( p:prodect,color: index,);
        },
      );
  }
}
