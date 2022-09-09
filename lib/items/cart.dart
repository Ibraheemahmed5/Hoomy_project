import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key, required this.item}) : super(key: key);

  final Item item;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18)),
          child:Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child:
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child:Icon( item.isFav==false? Icons.favorite : Icons.favorite, color: Color.fromRGBO(69, 185, 238, 1)),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0XFFE7E7E7),
                      fixedSize: const Size(26, 26),
                      shape: const CircleBorder(),
                    ),
                  ),
                ),
              ),
              Container(
                  width: 180,
                  height: 128,
                  margin: const EdgeInsets.only(top: 0, right: 10, left: 10),
                  color: Colors.white,
                  child: Image.asset(item.image_link.value)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                              item.name.value,
                              style: GoogleFonts.inter(fontSize: 15,color: Colors.black)
                          ),
                        ),
                        Text(
                            '\$'+'${item.price.value}',
                            style: GoogleFonts.inter(fontSize: 14,color: Colors.black

                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child:Icon( item.isFav==false? Icons.shopping_cart_outlined : Icons.shopping_cart_outlined, color: Color.fromRGBO(69, 185, 238, 1)),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0XFFE7E7E7),
                          fixedSize: const Size(26, 26),
                          shape: const CircleBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
    ),
      );
  }
}
/**/