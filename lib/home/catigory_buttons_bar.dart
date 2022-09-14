import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../catigory_buttons.dart';

class CatigoryButtonsBar extends StatelessWidget {
  const CatigoryButtonsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children:[
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: 'All'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: 'Chairs'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: ' Accessories'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: 'Beds'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: 'Office'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: 'Office'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 8),
            child: CatigoryButtons(text: 'Office'),
          ),
        ]
    );
  }
}
