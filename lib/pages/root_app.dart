import 'package:e_commerce_app/models/constants/constants.dart';
import 'package:e_commerce_app/pages/account_page/account_page.dart';
import 'package:e_commerce_app/pages/cart_page/cart_page.dart';
import 'package:e_commerce_app/pages/home_page/home_page.dart';
import 'package:e_commerce_app/pages/more_page/more_page.dart';
import 'package:e_commerce_app/pages/store_page/store_page.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getNavigationBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
       HomePage(),
        StorePage(),
        AccountPage(),
        CartPage(),
        MorePage(),
      ],
    );
  }

  Widget getNavigationBar() {
    return Container(
      height: 65,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(
                  itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],
                  color: activeTab == index ? accent : black,
                ));
          }),
        ),
      ),
    );
  }
}
