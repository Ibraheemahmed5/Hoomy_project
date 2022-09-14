import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdectImages extends StatelessWidget {
  final String im;
  const ProdectImages({super.key, required this.im});

  @override
  Widget build(BuildContext context) {
    return
    Center(
      child: Container(
          width: 60,
          height: 65,
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
          ),
          child: Image.asset(im)
      ),
    );

  }
}
