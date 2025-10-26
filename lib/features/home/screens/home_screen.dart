import 'package:flutter/material.dart';
import 'package:paxpass_app/configs/assets.gen.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/shared/widgets/text_widgets.dart';
import 'package:paxpass_app/features/home/data/doctor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:solar_icons/solar_icons.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: NormalText(
          text: 'Medical Center',
          fontSize: 23.sp,
          fontWeight: AppFontWeight.medium,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.h),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(26.r))),
              child: Column(
                children: [
                  Gap(10.h),
                  Container(
                    height: 2.67.h,
                    width: 60.w,
                    decoration: BoxDecoration(color: AppColors.dividerColor, borderRadius: BorderRadius.circular(100)),
                  ),
                  Gap(15.h),
                  HomeSearchBar(),
                  Gap(25.h),
                  HomeScheduleCard(),
                  Gap(25.h),
                  HomeAppointmentCards(),
                  Gap(25.h),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        NormalText(text: 'Categories', fontWeight: AppFontWeight.medium),
                        const Spacer(),
                        NormalText(
                          text: 'See all',
                          fontWeight: AppFontWeight.medium,
                          fontSize: 14.sp,
                          color: AppColors.primaryColor,
                        ),
                        Icon(SolarIconsOutline.altArrowRight, color: AppColors.primaryColor),
                      ],
                    ),
                  ),
                  Gap(25.h),
                  HomeCategories(),
                  Gap(25.h),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        NormalText(text: 'Nearest Doctor', fontWeight: AppFontWeight.medium),
                        const Spacer(),
                        NormalText(
                          text: 'See all',
                          fontWeight: AppFontWeight.medium,
                          fontSize: 14.sp,
                          color: AppColors.primaryColor,
                        ),
                        Icon(SolarIconsOutline.altArrowRight, color: AppColors.primaryColor),
                      ],
                    ),
                  ),
                  Gap(25.h),
                  Column(
                    spacing: 15.h,
                    children: doctors.map((doctor) => DoctorCard(doctor: doctor)).toList(),
                  ),
                  Gap(25.h),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        NormalText(text: 'Nearest Medical Center', fontWeight: AppFontWeight.medium),
                        const Spacer(),
                        NormalText(
                          text: 'See all',
                          fontWeight: AppFontWeight.medium,
                          fontSize: 14.sp,
                          color: AppColors.primaryColor,
                        ),
                        Icon(SolarIconsOutline.altArrowRight, color: AppColors.primaryColor),
                      ],
                    ),
                  ),
                  Gap(10.h),
                  SizedBox(
                    height: 275.h,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(spacing: 15.w, children: List.generate(5, (index) => MedicalCenterCard())),
                    ),
                  ),
                  Gap(50.h),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Material(
                color: AppColors.primaryColor,
                child: Column(
                  children: [
                    Gap(30.h),
                    SizedBox(
                      height: 52.h,
                      width: 52.w,
                      child: CircleAvatar(backgroundColor: Color(0xFF0C68C0),
                      child: Assets.icons.shield.svg(),
                      ),
                    ),
                    Gap(8.h),
                    NormalText(
                      text: '''Information shared via forms is\nencrypted and can only be viewed\nby those you share it with.''',
                      textAlign: TextAlign.center,
                      color: Colors.white,
                    ),
                    Gap(50.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
