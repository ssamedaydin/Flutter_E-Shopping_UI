import 'package:e_commerce_app/constants/icon_constant.dart';
import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BuildHeader extends StatefulWidget {
  const BuildHeader({Key? key}) : super(key: key);

  @override
  _BuildHeaderState createState() => _BuildHeaderState();
}

class _BuildHeaderState extends State<BuildHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: PadConst.instance.kLocationPad,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "İstanbul Kartal",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.location_on,
                size: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: PadConst.instance.kTwentyPad,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Mağazalarımızı \nİnceleyin",
                style: TextStyle(
                    fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: PadConst.instance.kTwentyPad,
          child: Row(
            children: [
              Flexible(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(color: grey.withOpacity(0.2), borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: PadConst.instance.kHeaderTextPad,
                    child: TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(IconConst.instance.iconSearch,size: 20,),
                        hintText: "Ara",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: black,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(IconConst.instance.iconLocation,color: white,size: 20,),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
