import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/pages/more_page/widgets/build_menu.dart';
import 'package:e_commerce_app/pages/more_page/widgets/build_profile.dart';
import 'package:e_commerce_app/pages/more_page/widgets/build_buttons.dart';
import 'package:e_commerce_app/widgets/build_appbar.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'DAHA FAZLA',),
      body: getBody(),
    );
  }
  Widget getBody() {
    return ListView(
      children: [
        BuildProfile(),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(
          height: Sizes.size3,
        ),
        BuildMenu(),
        BuildButtons(),
      ],
    );
  }
}
