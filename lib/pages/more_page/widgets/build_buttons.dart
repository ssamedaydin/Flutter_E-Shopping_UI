import 'package:e_commerce_app/constants/extension_context.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildButtons extends StatefulWidget {
  const BuildButtons({Key? key}) : super(key: key);

  @override
  _BuildButtonsState createState() => _BuildButtonsState();
}

class _BuildButtonsState extends State<BuildButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kTwentyFivePad2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: context.dynamicWidth(2.6),
            height: context.dynamicMultiHeight(0.06),
            decoration: BoxDecoration(
                color: black, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Ayarlar",
                style: TextStyle(fontSize: 15, color: white),
              ),
            ),
          ),
          Container(
            width: context.dynamicWidth(2.6),
            height: context.dynamicMultiHeight(0.06),
            decoration: BoxDecoration(
                color: black, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Çıkış Yap",
                style: TextStyle(fontSize: 15, color: white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
