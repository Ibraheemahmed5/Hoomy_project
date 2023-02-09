import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import 'package:hoomy_project1/home/home_slider/slide_item.dart';
import 'package:hoomy_project1/home/home_slider/slider_list.dart';
import 'package:hoomy_project1/slider/slides_dots.dart';
import 'package:hoomy_project1/slider/slides_item.dart';
import '../../help/Colors.dart';
import '../../slider/models/slider.dart';

class HomeSlider extends StatefulWidget {
  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int c=0;
    for(int i=0; i < BackEnd.Prodects3.length; i++){
    if(BackEnd.Prodects3[i].isFeatured == true){
      c= c+1;
    }
  }
    return  Container(

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/7,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: BackEnd.Prodects3.length,
            itemBuilder: (ctx, i) => SliderList(prodect: i,),
          ),
          Stack(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    for(int i = 0; i<c; i++)
                        if( i == _currentPage )
                          SlideDots(true)
                        else
                          SlideDots(false)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
