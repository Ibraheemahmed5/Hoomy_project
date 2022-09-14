import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoomy_project1/home/prodects/model.dart';

import 'images/images_list.dart';

class test extends StatelessWidget {
  const test({Key? key, required this.prodect}) : super(key: key);
  final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        child:ImagesList(prodect: prodect,),

      ),

    );
  }
}
