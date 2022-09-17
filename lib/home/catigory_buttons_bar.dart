import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/home/prodects/model.dart';

import '../Search_page_/search_page.dart';
import 'catigories_page/catigories_main.dart';
import 'catigory_buttons.dart';


class CatigoryButtonsBar extends StatefulWidget {
  const CatigoryButtonsBar({Key? key,}) : super(key: key);

  @override
  State<CatigoryButtonsBar> createState() => _CatigoryButtonsBarState();
}

class _CatigoryButtonsBarState extends State<CatigoryButtonsBar> {
  @override
  static RxInt index1 = 0.obs;

  _CatigoryButtonsBarState();


  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 45,
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child:  TextButton(

                onPressed: () {

                },
                child: Text(
                  "الكل",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Prodect.catigories.length,
                itemBuilder: (BuildContext context, index) {
                  return CatigoryButtons(
                    text: Prodect.catigories[index].value,
                    onPressed: () {
                      print(Prodect.catigories[index].value);
                      Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                          builder: (BuildContext context) =>  CatigoriesPage(text:Prodect.catigories[index].value,prodect: Prodect.Prodects.first,),
                        ),
                      );
                     // Get.to(CatigoriesPage(text:  Prodect.catigories[index].value,prodect: Prodect.Prodects.first,));
                    },
                  );
                  index = index1.value;
                }),
          )
        ],
      ),
    );
  }
}
