import 'package:e_commerce_app/constants/icon_constant.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/models/constants/constants.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/extension_context.dart';

class BuildHeader extends StatefulWidget {
  const BuildHeader({Key? key}) : super(key: key);

  @override
  _BuildHeaderState createState() => _BuildHeaderState();
}

class _BuildHeaderState extends State<BuildHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: context.dynamicWidth(1),
          height: context.dynamicHeight(1.6),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(homeImg), fit: BoxFit.cover)),
        ),
        Padding(
          padding: PadConst.instance.kHeaderPad,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconConst.instance.iconFavorite,
              SizedBox(
                width: 15,
              ),
              Icon(IconConst.instance.iconSearch,color: white,size: 25),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: Padding(
            padding: PadConst.instance.kHeaderTextPad,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kış Koleksiyonu",
                    style: TextStyle(
                        fontSize: 25,
                        color: white,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("KEŞFET",
                        style: TextStyle(
                            fontSize: 15,
                            color: white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(IconConst.instance.iconForward,color: white,size: 18),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
