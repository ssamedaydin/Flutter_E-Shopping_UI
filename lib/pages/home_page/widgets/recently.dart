import 'package:e_commerce_app/constants/extension_context.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/models/recently_model.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';


class BuildRecently extends StatefulWidget {
  const BuildRecently({Key? key}) : super(key: key);

  @override
  _BuildRecentlyState createState() => _BuildRecentlyState();
}

class _BuildRecentlyState extends State<BuildRecently> {
  final List<RecentlyModel> recently = RecentlyModel.recently;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(recently.length, (index){
          return Padding(
            padding: PadConst.instance.kLeftPad,
            child: Column(
              children: [
                Container(
                  width: context.dynamicWidth(2.7),
                  height: context.dynamicHeight(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(recently[index].imgUrl),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: context.dynamicWidth(2.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recently[index].title, style: TextStyle(fontWeight: FontWeight.bold, color: black, height: 1.5),),
                      SizedBox(height: 5,),
                      Text("₺" + recently[index].price, style: TextStyle(fontWeight: FontWeight.bold, color: grey,height: 1.5),),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
