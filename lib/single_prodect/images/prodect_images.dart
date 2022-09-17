
import 'package:flutter/material.dart';
import 'package:hoomy_project1/home/prodects/model.dart';

import '../test.dart';


class ProdectImages extends StatefulWidget {
  const ProdectImages({super.key, required this.im});

  @override
  _ProdectImagesState createState() => _ProdectImagesState(im);
  final String im;


}

class _ProdectImagesState extends State<ProdectImages> {
  final String im;

  _ProdectImagesState(this.im);


  @override
  Widget build(BuildContext context) {
   int i= Prodect.ImagesList.indexOf(im);
    return  Column(
      children:[
        Container(
            width: 60,
            height: 65,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
            ),
            child: Material(
              child: InkWell(
                onTap: () {
                  showDialogFunc(context, im);
                  // Navigator.pushReplacement<void, void>(
                  //     context,
                  //     MaterialPageRoute<void>(
                  //     builder: (BuildContext context) =>  PImage()));
                  test(im: i,);
                },
                borderRadius: BorderRadius.circular(10),
                child: ClipRRect(
                  child: Image.asset(im),
                ),
              ),
            )
        ),
      ]
    );
  }
}

  showDialogFunc(context,String img) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      img,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
// }

