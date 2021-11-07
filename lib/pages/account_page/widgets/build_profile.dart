import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/extension_context.dart';
class BuildProfile extends StatelessWidget {
  const BuildProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kMidPad,
      child: Row(
        children: [
          Container(
            width: context.dynamicWidth(3),
            height: context.dynamicHeight(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage('lib/assets/images/profile.jpg'), fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: Sizes.size2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Samed", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
              SizedBox(height: Sizes.size1,),
              Text("2019'dan beri üye", style: TextStyle(fontSize: 13, color: black.withOpacity(0.9)),),
              SizedBox(height: Sizes.size1,),
              Container(
                width: context.dynamicWidth(3),
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    backgroundColor: black,
                    primary: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text("DÜZENLE", style: TextStyle(color: white, fontSize: 13),),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
