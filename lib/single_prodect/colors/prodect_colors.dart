import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoomy_project1/api/Api_calls.dart';

class ProdectColors extends StatelessWidget {
  const ProdectColors({
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
                  //   color: Color(0xf000000),
                    border: Border.all(width: 1.5, color: Colors.black),
                    color: Color(
                        int.parse(BackEnd.Prodects3[p].colors[color].colorCode)),
                    shape: BoxShape.circle

    ),
          );
  }
}
