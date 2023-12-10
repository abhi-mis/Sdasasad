import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../components/product_item.dart';
import '../../../components/screen_title.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: ListView(
          children: [
            30.verticalSpace,
            const ScreenTitle(
              title: 'Home',
            ),
            20.verticalSpace,
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 20.h,
                mainAxisExtent: 250.h,
              ),
              shrinkWrap: true,
              primary: false,
              itemCount: controller.products.length,
              itemBuilder: (context, index) => ProductItem(
                product: controller.products[index],
              ),
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
