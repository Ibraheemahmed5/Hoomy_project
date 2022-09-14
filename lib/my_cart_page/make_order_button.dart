import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button2 extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  Button2 ({Key? key,
    required this.text, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        width: 150,
        height: 40,
        child:  RawMaterialButton(
          onPressed: () {
            onPressed();
          },
          fillColor:  Color.fromRGBO(69, 185, 238, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
          ),
          child: Text(
            text,style: GoogleFonts.inter(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ));

  }}
