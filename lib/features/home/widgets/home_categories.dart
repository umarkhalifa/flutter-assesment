import 'package:flutter/material.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/enums/categories.dart';
import 'package:paxpass_app/core/shared/widgets/text_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';


class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,

          runSpacing: 15.h,
          children: Categories.values.map((category) {
            return Container(
              height: 75.h,
              width: 75.w,
              // padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.whiteBackgroundColor,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(category.assetPath, height: 34.h),
                  Gap(5.h),
                  NormalText(text: category.displayName, fontSize: 12.sp, fontWeight: AppFontWeight.medium),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
