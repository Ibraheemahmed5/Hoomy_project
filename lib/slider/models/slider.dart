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
    imageUrl: 'photo/img.png',
    text: 'Wellcome1'
  ),
  Slide(
    imageUrl: 'photo/img.png',
    text: 'Wellcome2'
  ),
  Slide(
    imageUrl: 'photo/img.png',
    text: 'Wellcome3'
  ),
];