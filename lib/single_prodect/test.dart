import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/home/prodects/model.dart';

import '../api/api_Url.dart';

class test extends StatelessWidget {
  test({Key? key, required this.im, required this.p}) : super(key: key);
  final int im;
  final int p;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
            ),
            height: 250,
            child:
            ClipRRect(
            borderRadius: BorderRadius.circular(50),
                child: Image.network(ApiConstants.Domain+BackEnd.Prodects3[p].banner,fit: BoxFit.cover),
            ),)
        ],
      ),
    );
  }
}
