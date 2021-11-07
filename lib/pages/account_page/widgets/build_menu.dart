import 'package:e_commerce_app/constants/icon_constant.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildMenu extends StatefulWidget {
  const BuildMenu({Key? key}) : super(key: key);

  @override
  _BuildMenuState createState() => _BuildMenuState();
}

class _BuildMenuState extends State<BuildMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kTwentyPad,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(FontAwesomeIcons.shoppingBag,color: black,size: 20,),
              SizedBox(width: Sizes.size1,),
              Text("Siparişler",style: TextStyle(fontSize: 15),),
            ],
          ),
          Row(
            children: [
              Icon(IconConst.instance.iconLocation,color: black,),
              SizedBox(width: Sizes.size1,),
              Text("Adresim",style: TextStyle(fontSize: 15),),
            ],
          ),
          Row(
            children: [
              Icon(IconConst.instance.iconSettings,color: black,),
              SizedBox(width: Sizes.size1,),
              Text("Ayarlar",style: TextStyle(fontSize: 15),),
            ],
          ),
        ],
      ),
    );
  }
}
