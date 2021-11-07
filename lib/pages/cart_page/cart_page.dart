import 'package:e_commerce_app/pages/cart_page/widgets/build_cart.dart';
import 'package:e_commerce_app/pages/cart_page/widgets/build_prog.dart';
import 'package:e_commerce_app/widgets/build_appbar.dart';
import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title:'SEPETİM'),
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody(){
    return ListView(
      children: [
        BuildCart(),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(height: Sizes.size1,),
        BuildProg(),
      ],
    );
  }
}
