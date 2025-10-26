import 'package:flutter/material.dart';
import 'package:paxpass_app/configs/assets.gen.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:solar_icons/solar_icons.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(minHeight: 64.h, maxHeight: 64.h),
                filled: true,
                fillColor: AppColors.textFieldColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
                contentPadding: EdgeInsetsGeometry.symmetric(vertical: 22.h),
                prefixIcon: Icon(SolarIconsOutline.magnifier),
                suffixIcon: Assets.icons.filter.svg(height: 24.h),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 24.h,
                  minWidth: 40.w,
                ),
                hintText: 'Search',
              ),
            ),
          ),
          Gap(10.w),
          Container(
            height: 60.h,
            width: 64.w,
            decoration: BoxDecoration(color: AppColors.textFieldColor, borderRadius: BorderRadius.circular(14.r)),
            child: Icon(SolarIconsOutline.streetsMapPoint, color: AppColors.primaryColor, size: 26.sp),
          ),
        ],
      ),
    );
  }
}
