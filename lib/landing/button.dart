import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button1 extends StatelessWidget {
  final String text;
final void Function() onPressed;

   Button1 ({Key? key,
  required this.text, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(bottom: 30 ,left: 30,right: 30),
    width: 337,
    height: 50,
    child:  RawMaterialButton(
    onPressed: () {
      onPressed();
    },
      fillColor:  Color.fromRGBO(69, 185, 238, 1),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18)
      ),
      child: Text(
        text,style: GoogleFonts.inter(fontSize: 25,color: Colors.black),
        ),
    ));

}}
