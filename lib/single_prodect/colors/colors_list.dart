import 'package:flutter/cupertino.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/single_prodect/colors/prodect_colors.dart';


class ColorList extends StatelessWidget {
  const ColorList({Key? key, required this.prodect}) : super(key: key);
  final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    return  ListView(
        scrollDirection: Axis.horizontal,
        children:
        prodect.pcolor.map((e) => ProdectColors( color: e,)).toList()
    );
  }
}
