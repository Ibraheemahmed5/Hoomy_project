import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeSlide{
  final String imageUrl;
  static final RxString typed = ''.obs;


  HomeSlide({
    required this.imageUrl,
  });
}

final homeslideList = [
  HomeSlide(
      imageUrl: 'photo/hoomy1.png',
  ),
  HomeSlide(
      imageUrl: 'photo/hoomy1.png',
  ),
  HomeSlide(
      imageUrl: 'photo/hoomy1.png',
  ),
];