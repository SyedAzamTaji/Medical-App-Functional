import 'package:flutter/material.dart';

class CartData {
  final String title;
  final String subtitle;
  final num price;
  final AssetImage image;
  int count;

  CartData(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.image,
      required this.count});
}

List<CartData> info = [];
