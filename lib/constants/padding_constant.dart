import 'package:flutter/material.dart';

class PadConst {
  static PadConst instance = PadConst._init();
  PadConst._init();

  static double kPadding = 8.0;
  final kHeaderPad = EdgeInsets.only(top: 35, right: 10);
  final kHeaderTextPad =  EdgeInsets.only(left: 20);
  final kTitlePad =  EdgeInsets.only(left: 15.0, right: 15.0);
  final kLeftPad =  EdgeInsets.only(left: 15.0);
  final kBottomPad =  EdgeInsets.only(bottom: 15.0);
  final kBottomPad2 =  EdgeInsets.only(bottom: 40.0);
  final kTwentyPad = EdgeInsets.only(left: 20.0, right: 20.0);
  final kThirtyPad = EdgeInsets.only(right: 30.0, left: 30.0);
  final kMidPad = EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 25.0);
  final kTwentyFivePad = EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0);
  final kTwentyFivePad2 = EdgeInsets.only(left: 25.0, right: 25.0);
  final kLocationPad = EdgeInsets.only(top: 30.0, left: 20, right: 20);
  final kCartPad = EdgeInsets.only(top: 20.0, left: 20, right: 20);
  final kAccountTitle = EdgeInsets.only(top: 25.0,bottom: 10.0);
}