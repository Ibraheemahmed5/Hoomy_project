import 'package:flutter/material.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/home/prodects/model.dart';

import '../../api/api_Url.dart';
import '../test.dart';


class ProdectImages extends StatefulWidget {
  const ProdectImages({super.key, required this.im, required this.p});

  @override
  _ProdectImagesState createState() => _ProdectImagesState(im ,p);
  final int im;
  final int p;


}

class _ProdectImagesState extends State<ProdectImages> {
  final int im;
  final int p;

  _ProdectImagesState(this.im, this.p);


  @override
  Widget build(BuildContext context) {
   int i= Prodect.ImagesList.indexOf(im);
    return  Column(
      children:[
        Container(
            width: 100,
            height: 60,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 0),
                borderRadius: BorderRadius.circular(10),
    ),
            child: Material(
              child: InkWell(
                onTap: () {
                 showDialogFunc(context, ApiConstants.Domain+BackEnd.Prodects3[p].productImage[im].image);
                  // Navigator.pushReplacement<void, void>(
                  //     context,
                  //     MaterialPageRoute<void>(
                  //     builder: (BuildContext context) =>  test(im: i, p: p,)));
                },
                borderRadius: BorderRadius.circular(10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(ApiConstants.Domain+BackEnd.Prodects3[p].productImage[im].image,fit: BoxFit.cover,),
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
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      img,
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height/3.4,
                      width: MediaQuery.of(context).size.width * 0.8,
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

