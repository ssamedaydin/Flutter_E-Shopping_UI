import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/models/constants/constants.dart';
import 'package:e_commerce_app/pages/home_page/widgets/build_header.dart';
import 'package:e_commerce_app/pages/home_page/widgets/build_title.dart';
import 'package:e_commerce_app/pages/home_page/widgets/categories.dart';
import 'package:e_commerce_app/pages/home_page/widgets/recently.dart';
import 'package:e_commerce_app/pages/home_page/widgets/recommends.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  Widget getBody() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        BuildHeader(),
        SizedBox(
          height: Sizes.size3,
        ),
        BuildTitle(title: "Kategoriler"),
        SizedBox(
          height: Sizes.size2,
        ),
        BuildCategories(),
        SizedBox(
          height: Sizes.size3,
        ),
        BuildTitle(title: "Senin için önerilenler"),
        SizedBox(
          height: Sizes.size2,
        ),
        BuildRecommends(),
        SizedBox(
          height: Sizes.size4,
        ),
        CustomeCarouselHomePage(items: slider,),
        SizedBox(
          height: Sizes.size3,
        ),
        BuildTitle(title: "Son görüntülediklerin"),
        SizedBox(
          height: Sizes.size2,
        ),
        BuildRecently(),
        SizedBox(
          height: Sizes.size2,
        ),
      ],
    );
  }
}
