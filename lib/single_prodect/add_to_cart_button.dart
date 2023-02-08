import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../api/Api_calls.dart';
import '../help/text_style.dart';

class Button3 extends StatelessWidget {
  final String text;
  final void Function() onPressed;


  Button3 ({Key? key,
    required this.text, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        width: 200,
        height: 40,
        child:  RawMaterialButton(
          onPressed: () {
            onPressed();
          },
          fillColor:  Color.fromRGBO(69, 185, 238, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(
                text,style: Text_Style.getstyle(
                fontsize: 21,
                ColorText: Colors.black,
                fontWeight: FontWeight.bold)
            ),
          ),
        ));

  }}
