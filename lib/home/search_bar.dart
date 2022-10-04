import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/Search_page_/search_page.dart';
import 'package:unicons/unicons.dart';

import '../help/text_style.dart';

class SearchBar extends StatefulWidget {
  SearchBar({
    Key? key,
    required this.searchController, required this.onPressed, required this.onChanged, this.TextField1,
  }) : super(key: key);

  final TextEditingController searchController;
   final void Function() onPressed;
  final void Function(String)? onChanged;
  final Widget? TextField1;


  @override
  State<SearchBar> createState() => _SearchBarState(searchController);
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController searchController;

  _SearchBarState(this.searchController);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 60,
            child:
            TextField(

              autofocus: false,
                onChanged: (text) {
                  widget.onChanged!(text);
                },
                textDirection: TextDirection.rtl,
                controller: widget.searchController,
                style: Text_Style.getstyle(fontsize: 14, ColorText: Colors.black, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    fillColor: Color.fromRGBO(238, 238, 238, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(style: BorderStyle.none),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: widget.searchController.text.isEmpty
                          ? Color.fromRGBO(129, 129, 129, 1)
                          : Color(0xff45B9EE),
                    ),
                    hintText: "     بحث...",
                    hintStyle: Text_Style.getstyle(fontsize: 15, ColorText: Colors.black, fontWeight: FontWeight.w600)),
               ),







          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Container(
            margin: EdgeInsets.only(left: 5),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(16)),
            child: IconButton(
              onPressed: () {
                onPressed();
              },
              icon: Icon(UniconsLine.filter),
            ),
          ),
        ),
      ],
    );
  }

  void onPressed() {
      Get.to(Search_page());
  }

}
