import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildProg extends StatelessWidget {
  const BuildProg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: PadConst.instance.kThirtyPad,
          child: Text("Promosyon kodun var mı ?", style: TextStyle(fontSize: 16),),
        ),
        SizedBox(height: 15,),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        Padding(
          padding: PadConst.instance.kThirtyPad,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Teslimat", style: TextStyle(fontSize: 16),),
              Text("Standart - Ücretsiz", style: TextStyle(fontSize: 16),),
            ],
          ),
        ),
        SizedBox(height: Sizes.size3,),
        Padding(
          padding: PadConst.instance.kTwentyPad,
          child: Container(
            height: Sizes.size5,
            width: Sizes.infinity,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(50 / 2),
            ),
            child: Center(
              child: Text("SATIN AL \₺160".toUpperCase(), style: TextStyle(color: white, fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ],
    );
  }
}
