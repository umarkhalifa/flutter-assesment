import 'package:flutter/material.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/shared/widgets/text_widgets.dart';
import 'package:paxpass_app/features/home/data/doctor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:solar_icons/solar_icons.dart';


class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200.h,
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 42.h,
                width: 42.w,
                child: CircleAvatar(backgroundImage: AssetImage(doctor.imagePath)),
              ),
              Gap(10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText(text: doctor.name, fontWeight: AppFontWeight.medium, fontSize: 16.sp),
                    NormalText(
                      text: '${doctor.specialty} | ${doctor.yearsOfExperience} Years',
                      fontSize: 14.sp,
                      color: AppColors.greyTextColor,
                    ),
                    Gap(5.h),
                    Row(
                      children: [
                        NormalText(
                          text: '${doctor.rating}',
                          fontSize: 14.sp,
                          color: AppColors.greyTextColor,
                          fontWeight: AppFontWeight.medium,
                        ),
                        Gap(4.w),
                        Icon(Icons.star_rounded, color: AppColors.yellowColor),
                        Gap(4.w),

                        NormalText(text: '${doctor.reviews} Reviews', fontSize: 14.sp, color: AppColors.greyTextColor),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                doctor.liked ? SolarIconsBold.heart : SolarIconsOutline.heart,
                color: doctor.liked ? AppColors.redColor : AppColors.greyTextColor,
              ),
            ],
          ),
          Gap(20.h),
          Row(
            children: [
              Icon(SolarIconsOutline.calendar, color: AppColors.primaryColor, size: 18.sp),
              Gap(8.w),
              NormalText(text: 'Tomorrow', fontSize: 14.sp, color: AppColors.primaryColor),
              Gap(24.w),
              Icon(SolarIconsOutline.clockCircle, color: AppColors.primaryColor, size: 18.sp),
              Gap(8.w),
              NormalText(text: '10:30am-05:00pm', fontSize: 14.sp, color: AppColors.primaryColor),
            ],
          ),
          Gap(20.h),
          Divider(color: Color(0XFFF2F4F5)),
          Gap(16.h),
          Row(
            children: [
              Icon(SolarIconsOutline.mapPoint, color: AppColors.greenColor, size: 18.sp),
              Gap(8.w),
              NormalText(text: 'Horizon Medical Center', fontSize: 14.sp, color: AppColors.greenColor),
              const Spacer(),
              NormalText(text: '2km Away', fontSize: 14.sp),
            ],
          ),
        ],
      ),
    );
  }
}
