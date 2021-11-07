import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/pages/store_page/widgets/build_header.dart';
import 'package:e_commerce_app/pages/store_page/widgets/build_stores.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
         BuildHeader(),
          SizedBox(height: 40,),
          Divider(
            color: grey.withOpacity(0.8),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: PadConst.instance.kTwentyPad,
            child: Text("Tüm Mağazalar", style: TextStyle(fontSize: 22, color: black),),
          ),
          SizedBox(height: 20,),
          BuildStores(),
        ],
      ),
    );
  }
}
