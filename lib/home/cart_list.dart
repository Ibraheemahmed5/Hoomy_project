import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../items/cart.dart';
import '../items/model.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx((){
        return
          GridView.count(
            crossAxisCount: 2,
              childAspectRatio:182/250,
            children:
              Item.items.map((e) => Cart(item: e)).toList(),
          );
      }
    );

  }
}