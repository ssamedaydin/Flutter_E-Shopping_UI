import 'package:e_commerce_app/constants/extension_context.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/models/constants/constants.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildProfile extends StatelessWidget {
  const BuildProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kTwentyFivePad,
      child: Row(
        children: [
          Container(
            width: context.dynamicWidth(5.5),
            height: context.dynamicHeight(11),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(profileUrl), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: Sizes.size2,
          ),
          Column(
            children: [
              Text(
                "Samed",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: Sizes.size1,
              ),
              Text(
                "4 Sipariş",
                style: TextStyle(fontSize: 15, color: grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
