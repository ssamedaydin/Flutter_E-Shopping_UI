import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:flutter/material.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PadConst.instance.kAccountTitle,
      child: Center(
        child: Text(
          "ACCOUNT",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
