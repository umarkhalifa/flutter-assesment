import 'package:flutter/material.dart';
import 'package:paxpass_app/configs/assets.gen.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/shared/widgets/text_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class MedicalCenterCard extends StatelessWidget {
  const MedicalCenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 243.h,
          width: 185.w,
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 137.h,
                width: 156.w,
                decoration: BoxDecoration(image: DecorationImage(image: Assets.images.hospital.provider())),
              ),
              Gap(10.h),
              NormalText(text: 'Tyna Medical Center', fontWeight: AppFontWeight.medium),
              Gap(3.h),
              NormalText(text: 'Udomsuk, Bang Na', fontSize: 14.sp, color: AppColors.greyTextColor),
              const Spacer(),
              Row(
                children: [
                  NormalText(text: '+2K Review', fontSize: 12.sp, color: AppColors.greyTextColor),
                  const Spacer(),
                  NormalText(
                    text: '4.8',
                    fontSize: 14.sp,
                    color: AppColors.greyTextColor,
                    fontWeight: AppFontWeight.medium,
                  ),
                  Gap(4.w),
                  Icon(Icons.star_rounded, color: AppColors.yellowColor),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
