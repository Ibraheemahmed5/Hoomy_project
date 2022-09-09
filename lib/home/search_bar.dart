import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 56,
                width: 60,
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(238, 238, 238, 1),
                    ),
                    child: InkWell(
                      //borderRadius: BorderRadius.circular(100.0),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.flight,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )

            ),
            Container(
              width: 310,
              height: 56,
                child: TextField(
                    controller: searchController,
                    style: TextStyle(height: 56),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20
                        ),
                        fillColor: Color.fromRGBO(238, 238, 238, 1),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                            style: BorderStyle.none
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        prefixIcon: const Icon(Icons.search, size: 30,color: Color.fromRGBO(129, 129, 129, 1),),
                        hintText: "     Search...",
                        hintStyle: GoogleFonts.inter(fontSize: 15,color: Color.fromRGBO(129, 129, 129, 1))
                    ),
                    onTap: (){
                    }
                ),
            ),
          ],
    );
  }
}
