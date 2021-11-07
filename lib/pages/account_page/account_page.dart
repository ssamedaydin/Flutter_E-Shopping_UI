import 'package:e_commerce_app/constants/sizes_constant.dart';
import 'package:e_commerce_app/pages/account_page/widgets/build_list.dart';
import 'package:e_commerce_app/pages/account_page/widgets/build_menu.dart';
import 'package:e_commerce_app/pages/account_page/widgets/build_profile.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/widgets/build_appbar.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "HESABIM",),
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
   return ListView(
     children: [
       BuildProfile(),
       SizedBox(height: Sizes.size4,),
       BuildMenu(),
       SizedBox(height: Sizes.size4,),
       Divider(
         thickness: 1,
       ),
       SizedBox(height: Sizes.size3,),
       BuildList(),
     ],
   );
  }
}
