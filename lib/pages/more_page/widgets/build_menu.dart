import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/models/constants/constants.dart';
import 'package:flutter/material.dart';

class BuildMenu extends StatefulWidget {
  const BuildMenu({Key? key}) : super(key: key);

  @override
  _BuildMenuState createState() => _BuildMenuState();
}

class _BuildMenuState extends State<BuildMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kTwentyFivePad2,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(menusMore.length, (index) {
            return Padding(
              padding: PadConst.instance.kBottomPad2,
              child: Text(
                menusMore[index],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
              ),
            );
          })),
    );
  }
}
