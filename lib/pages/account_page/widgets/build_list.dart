import 'package:e_commerce_app/constants/icon_constant.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/models/constants/constants.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildList extends StatefulWidget {
  const BuildList({Key? key}) : super(key: key);

  @override
  _BuildListState createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kThirtyPad,
      child: Column(
        children: List.generate(accountList.length, (index){
          return Padding(
            padding: PadConst.instance.kBottomPad,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(accountList[index],style: TextStyle(fontSize: 16),),
                    Icon(IconConst.instance.iconForward, color: black.withOpacity(0.5),size: 17,),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(color: grey.withOpacity(0.8),),
              ],
            ),
          );
        }),
      ),
    );
  }
}
