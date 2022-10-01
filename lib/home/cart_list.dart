import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/home/prodects/home_cart.dart';
import '../api/Api_calls.dart';
import 'prodects/model.dart';

class CardsList extends StatefulWidget {
  const CardsList({Key? key}) : super(key: key);

  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  State<CardsList> createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:MediaQuery.of(context).size.width / 620,
            ),
            itemCount: BackEnd.Prodects3.length,
            itemBuilder: (BuildContext context, index) {
              return Cart(
                prodects: index,
              );
            }

            //   child: GridView.count(
            //   shrinkWrap: true,
            //   physics: ScrollPhysics(),
            //   crossAxisCount: 2,
            //   childAspectRatio: MediaQuery.of(context).size.width / 550,
            //   children: BackEnd.Prodects3.map((e) => Cart(
            //         prodects: 1,
            //       )).toList(),
            // )

            )
    );
  }
}
