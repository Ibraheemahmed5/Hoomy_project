import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoomy_project1/api/Api_calls.dart';

class ProdectColors2 extends StatelessWidget {
  const ProdectColors2({
    Key? key,
    required this.color,
    required this.p,
  }) : super(key: key);
  final int color;
  final int p;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black26),
          color: Color(int.parse(BackEnd.categoryList[p].colors[color].colorCode)),
          shape: BoxShape.circle),
    );
  }
}
