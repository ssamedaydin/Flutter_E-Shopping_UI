import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({required this.title});

  final String title;
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0, top: 20.0),
            child: Text(title, style: TextStyle(color: black),),
          ),
          Divider(color: grey.withOpacity(0.8),),
        ],
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}