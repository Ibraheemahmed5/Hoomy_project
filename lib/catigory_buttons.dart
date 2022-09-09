import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatigoryButtons extends StatelessWidget {
  final String text;

  const CatigoryButtons ({Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        child:  RawMaterialButton(
          onPressed: () { },
          fillColor:  Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
          ),
          child: Text(
            text,style: GoogleFonts.inter(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ));

  }}
