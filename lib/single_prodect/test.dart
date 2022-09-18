import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hoomy_project1/home/prodects/model.dart';



class test extends StatelessWidget {
  test({Key? key, required this.im}) : super(key: key);
  final int im;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0,right: 0,bottom: 0,top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: Image.asset(Prodect.ImagesList[im]),
            ),
        ],
      ),
    );
  }
}
