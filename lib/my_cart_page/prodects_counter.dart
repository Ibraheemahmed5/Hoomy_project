import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';
import '../api/Api_calls.dart';
import '../home/prodects/model.dart';
import 'my_cart_list.dart';


class ProdectCounter extends StatefulWidget {
  const ProdectCounter({Key? key, required this.prodect, required this.container_color,required this.button_color, required this.left_border, required this.right_border}) : super(key: key);
  final int prodect;
  final Color container_color;
  final Color button_color;
  final double left_border;
  final double right_border;
  @override
  State<ProdectCounter> createState() => _ProdectCounterState(prodect,container_color,button_color,left_border,right_border);

}

class _ProdectCounterState extends State<ProdectCounter> {
  final int prodect ;
  final Color container_color;
  final Color button_color;
  final double left_border;
  final double right_border;
  Rx<int> _n = 1.obs;
  _ProdectCounterState(this.prodect, this.button_color, this.container_color, this.left_border,this.right_border);

  void add() {
     BackEnd.Prodects_cart[prodect].quantity +1;
  }

   void minus() {
    BackEnd.Prodects_cart[prodect].quantity -1;
  }
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 35,
              decoration:BoxDecoration(
                  color: container_color ,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(left_border),bottomLeft: Radius.circular(left_border),topRight: Radius.circular(right_border),bottomRight: Radius.circular(right_border))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 40,
                    child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor:button_color,
                      onPressed: add,
                      child: Icon(Icons.add,
                        color: Colors.black,),
                    ),),
                Container(
                      width: 40,
                      child: Center(
                        child: Text('${BackEnd.Prodects_cart[prodect].quantity}',
                            style: new TextStyle(fontSize: 24)),
                      ),
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: button_color,
                      onPressed: minus,
                      child: Icon(Icons.remove,
                        color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

// class ProdectsCounter extends StatelessWidget {
//   const ProdectsCounter({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//       ),
//     );
//   }
// }
