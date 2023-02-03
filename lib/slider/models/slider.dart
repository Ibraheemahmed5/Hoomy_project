import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String text;

  Slide({required this.imageUrl, required this.text});
}

final slideList = [
  Slide(imageUrl: 'photo/slideList3.png',
      text: ' اهلاً وسهلاً '),



  Slide(imageUrl: 'photo/slideList2.png',
      text: ' اهلاً وسهلاً '),


  Slide(imageUrl: 'photo/slideList1.png',
      text: ' اهلاً وسهلاً '),];
