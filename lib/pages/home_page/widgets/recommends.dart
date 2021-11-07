import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/models/recommends_model.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/extension_context.dart';
class BuildRecommends extends StatefulWidget {
  const BuildRecommends({Key? key}) : super(key: key);

  @override
  _BuildRecommendsState createState() => _BuildRecommendsState();
}

class _BuildRecommendsState extends State<BuildRecommends> {
  final List<RecommendsModel> recommends = RecommendsModel.recommends;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(recommends.length, (index){
          return Padding(
            padding: PadConst.instance.kLeftPad,
            child: Column(
              children: [
                Container(
                  width: context.dynamicWidth(2.7),
                  height: context.dynamicHeight(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(recommends[index].imgUrl),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: context.dynamicWidth(2.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recommends[index].title, style: TextStyle(fontWeight: FontWeight.bold, color: black, height: 1.5),),
                      SizedBox(height: 5,),
                      Text("₺" + recommends[index].price, style: TextStyle(fontWeight: FontWeight.bold, color: grey,height: 1.5),),
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
