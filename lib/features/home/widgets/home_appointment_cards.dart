import 'package:flutter/material.dart';
import 'package:paxpass_app/configs/assets.gen.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/shared/widgets/text_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class HomeAppointmentCards extends StatelessWidget {
  const HomeAppointmentCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 160.h,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: AppColors.whitePurpleColor),
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 42.h,
                    width: 42.w,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0XFFE7EFFF),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Color(0XFFA0B6EA)),
                    ),
                    child: Assets.icons.menuBoard.svg(),
                  ),
                  const Spacer(),
                  NormalText(text: 'Book Doctor Appointment', fontWeight: AppFontWeight.semiBold, height: 1.2),
                  Gap(4.h),
                  NormalText(
                    text: 'Find a Doctor or Specialist',
                    fontWeight: AppFontWeight.medium,
                    color: AppColors.greyTextColor,
                    fontSize: 12.sp,
                  ),
                ],
              ),
            ),
          ),
          Gap(15.w),
          Expanded(
            child: Container(
              height: 160.h,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: AppColors.whiteGreenColor),
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 42.h,
                    width: 42.w,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0XFFD3F8DF),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Color(0XFFAAF0C4)),
                    ),
                    child: Assets.icons.building.svg(),
                  ),
                  const Spacer(),
                  NormalText(text: 'Book Hospital Appointment', fontWeight: AppFontWeight.semiBold, height: 1.2),
                  Gap(4.h),
                  NormalText(
                    text: 'Locate nearby hospital to visit',
                    fontWeight: AppFontWeight.medium,
                    color: AppColors.greyTextColor,
                    fontSize: 12.sp,
                  ),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
