import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class IconConst {
  static IconConst instance = IconConst._init();
  IconConst._init();

  final iconSettings = Icons.settings;
  final iconFavorite = Icon(Icons.favorite,color: white,size: 28,);
  final iconSearch = Icons.search;
  final iconForward = Icons.arrow_forward_ios;
  final iconForwardTitle = Icons.arrow_forward_ios;
  final iconLocation = Icons.location_on;
}