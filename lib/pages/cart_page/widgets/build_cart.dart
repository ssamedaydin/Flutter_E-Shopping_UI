import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/constants/extension_context.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/models/cart_list_model.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildCart extends StatefulWidget {
  const BuildCart({Key? key}) : super(key: key);

  @override
  _BuildCartState createState() => _BuildCartState();
}

class _BuildCartState extends State<BuildCart> {
  final List<CartListModel> cartList = CartListModel.cartList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(cartList.length, (index){
        return Column(
          children: [
            Padding(
              padding: PadConst.instance.kCartPad,
              child: Row(
                children: [
                  Container(
                    width: context.dynamicWidth(2.7),
                    height: context.dynamicHeight(4),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(cartList[index].imgUrl),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: Sizes.size2,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartList[index].name, style: TextStyle(fontSize: 22),),
                      SizedBox(height: Sizes.size1,),
                      Text("ref: " + cartList[index].ref, style: TextStyle(fontSize: 13, color: black.withOpacity(0.7)),),
                      SizedBox(height: Sizes.size1,),
                      Text(cartList[index].size, style: TextStyle(fontSize: 22, color: black.withOpacity(0.7)),),
                      SizedBox(height: Sizes.size4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(cartList[index].price, style: TextStyle(fontSize: 22,),),
                          SizedBox(width: Sizes.size2,),
                          Row(
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: black.withOpacity(0.5),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 10,
                                    color: black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Sizes.size1,
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: Sizes.size1,
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: black.withOpacity(0.5))),
                                child: Center(
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                    color: black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              SizedBox(width: Sizes.size1,),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.size2,)
          ],
        );
      }),
    );
  }
}
