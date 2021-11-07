import 'package:e_commerce_app/constants/extension_context.dart';
import 'package:e_commerce_app/constants/icon_constant.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/models/store_list_model.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildStores extends StatefulWidget {
  const BuildStores({Key? key}) : super(key: key);

  @override
  _BuildStoresState createState() => _BuildStoresState();
}

class _BuildStoresState extends State<BuildStores> {
  final List<StoreListModel> storeList = StoreListModel.storeList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(storeList.length, (index) {
        return Padding(
          padding: PadConst.instance.kMidPad,
          child: Container(
            height: context.dynamicHeight(3.8),
            width: Sizes.infinity,
            child: Stack(
              children: [
                Container(
                  height: context.dynamicHeight(3.8),
                  width: Sizes.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(storeList[index].img),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: context.dynamicHeight(3.8),
                  width: Sizes.infinity,
                  decoration: BoxDecoration(
                    color: black.withOpacity(0.35),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Align(
                          child: Container(
                            width: 65,
                            height: 25,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: storeList[index].open == 0 ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("KAPALI", style: TextStyle(fontSize: 10, color: black,fontWeight: FontWeight.bold),),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ) : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("AÇIK", style: TextStyle(fontSize: 10, color: black,fontWeight: FontWeight.bold),),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          alignment: Alignment.topRight,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(IconConst.instance.iconLocation, size: 20, color: white,),
                            SizedBox(width: 10,),
                            Text(storeList[index].name, style: TextStyle(fontSize: 18, color: white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
