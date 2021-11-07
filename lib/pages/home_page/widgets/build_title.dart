import 'package:e_commerce_app/constants/icon_constant.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildTitle extends StatelessWidget {
  String title;


  BuildTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kTitlePad,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text(
                "Tümü",
                style: TextStyle(color: grey),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(IconConst.instance.iconForwardTitle,color: grey,size: 14),
            ],
          ),
        ],
      ),
    );
  }
}
