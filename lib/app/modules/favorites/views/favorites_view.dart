import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../components/no_data.dart';
import '../../../components/product_item.dart';
import '../../../components/screen_title.dart';
import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView(
          children: [
            30.verticalSpace,
            const ScreenTitle(
              title: 'Favorites',
              dividerEndIndent: 190,
            ),
            20.verticalSpace,
            GetBuilder<FavoritesController>(
              builder: (_) => controller.products.isEmpty
                ? const NoData(text: 'No Products in Favorite Yet!')
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 15.w,
                      mainAxisSpacing: 10.h,
                      mainAxisExtent: 260.h,
                    ),
                    shrinkWrap: true,
                    primary: false,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) => ProductItem(
                      product: controller.products[index],
                    ),
                  ),
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
