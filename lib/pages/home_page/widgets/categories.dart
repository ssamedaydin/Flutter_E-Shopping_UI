import 'package:e_commerce_app/constants/padding_constant.dart';
import 'package:e_commerce_app/models/categories_model.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/extension_context.dart';

class BuildCategories extends StatefulWidget {
  const BuildCategories({Key? key}) : super(key: key);

  @override
  _BuildCategoriesState createState() => _BuildCategoriesState();
}

class _BuildCategoriesState extends State<BuildCategories> {
  final List<CategoriesModel> categories = CategoriesModel.categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return Padding(
            padding: PadConst.instance.kLeftPad,
            child: Container(
              width: context.dynamicWidth(2.2),
              height: context.dynamicHeight(3.4),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(categories[index].imgUrl),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: black.withOpacity(0.1),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        categories[index].title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                    ),
                    bottom: 5,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
