import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/home/prodects/model.dart';

import '../Search_page_/search_page.dart';
import '../api/Api_calls.dart';
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
    return Flex(
      direction: Axis.vertical,

      children: [
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: BackEnd.apiCategory.length,
              itemBuilder: (BuildContext context, index) {
                return CatigoryButtons(
                  text: BackEnd.apiCategory[index].title,
                  onPressed: () {
                    setState(() {
                    });
                    print(BackEnd.apiCategory[index].title);
                    Navigator.pushReplacement<void, void>(
                        context,
                        MaterialPageRoute<void>(
                        builder: (BuildContext context) =>  CatigoriesPage(text:BackEnd.apiCategory[index].title),
                      ),
                    );
                  },
                );
                index = index1.value;
              }),
        ),
      ],
    );
  }
}
