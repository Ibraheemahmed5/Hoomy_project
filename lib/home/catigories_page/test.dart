import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../prodects/model.dart';
import 'catigories_list.dart';

class test extends StatelessWidget {
  const test({Key? key, required this.text, required this.prodect}) : super(key: key);
  final String text;
  final Prodect prodect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (text.isEmpty)
            Flexible(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: CatigoriesList(prodect: prodect, text: text,),
                  )),
            ),
        ],
      ) ,
    ) ;
  }
}
