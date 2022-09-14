import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdectColors extends StatelessWidget {
  const ProdectColors({
    Key? key, required this.color,
  }) : super(key: key);
  final int color;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Color(color),
          shape: BoxShape.circle
      ),
    );
  }
}