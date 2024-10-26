import 'package:beauty_ecommerce/core/helper/app_images.dart';
import 'package:beauty_ecommerce/core/theme/app_text_style.dart';
import 'package:beauty_ecommerce/core/theme/font_family_helper.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/beauty_items_list_view.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/brand_items_list_view.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/container_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 26.w,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppImages.beautyLogo,
                width: 120.w,
                height: 120.h,
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Text(
              "Let's make your \nown beauty",
              style: AppTextStyle.font24PinkBold
                  .copyWith(fontFamily: FontFamilyHelper.k2dFont),
            ),
            SizedBox(
              height: 17.h,
            ),
            SizedBox(
              height: 14.h,
            ),
            ContainerOffer(),
            SizedBox(
              height: 19.h,
            ),
            BrandItemsListView(),
            SizedBox(
              height: 12.h,
            ),
            BeautyItemsListView(),
          ],
        ),
      ),
    ));
  }
}