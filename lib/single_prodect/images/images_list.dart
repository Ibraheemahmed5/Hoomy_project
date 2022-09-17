import 'package:flutter/cupertino.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/single_prodect/images/prodect_images.dart';

import '../test.dart';


class ImagesList extends StatelessWidget {
  const ImagesList({Key? key, required this.prodect}) : super(key: key);
  final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    return
    ListView(
    scrollDirection: Axis.horizontal,
    children:
    prodect.image_link.map((e) => ProdectImages(im: e)).toList()
    );

  }
}
