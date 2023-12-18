import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/lists.dart';
import 'package:ecommerceapp/views/category_screen/category_details.dart';
import 'package:ecommerceapp/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoriesImages[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index]
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .margin(
                    const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 3,
                    ),
                  )
                  .padding(const EdgeInsets.all(5))
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(
                () {
                  Get.to(() => CategoryDetails(title: categoriesList[index]));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
