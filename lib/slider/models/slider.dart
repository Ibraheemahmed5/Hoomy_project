import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String text;

  Slide({
    required this.imageUrl,
    required this.text
  });
}

final slideList = [
  Slide(
    imageUrl: 'Assits/Images/img.png',
    text: 'Wellcome1'
  ),
  Slide(
    imageUrl: 'Assits/Images/img.png',
    text: 'Wellcome2'
  ),
  Slide(
    imageUrl: '',
    text: 'Wellcome3'
  ),
];