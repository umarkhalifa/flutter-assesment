import 'package:flutter/material.dart';
import 'package:paxpass_app/configs/assets.gen.dart';
import 'package:paxpass_app/core/constants/colors.dart';
import 'package:paxpass_app/core/enums/app_font_weight.dart';
import 'package:paxpass_app/core/shared/widgets/text_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:solar_icons/solar_icons.dart';
class HomeScheduleCard extends StatefulWidget {
  const HomeScheduleCard({super.key});

  @override
  State<HomeScheduleCard> createState() => _HomeScheduleCardState();
}

class _HomeScheduleCardState extends State<HomeScheduleCard> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          SizedBox(
            height: 172.h,
            width: MediaQuery.sizeOf(context).height,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.sizeOf(context).height,
                  margin: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
                  height: 172.h,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(16.r),
                    image: DecorationImage(
                      image: Assets.images.medicalLine.provider(),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    children: [
                      Container(
                        height: 62.h,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 10.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 36.h,
                              width: 36.w,
                              child: CircleAvatar(backgroundImage: Assets.images.doc1.provider()),
                            ),
                            Gap(10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  NormalText(text: 'Jason Smith', fontWeight: AppFontWeight.medium, fontSize: 16.sp),
                                  NormalText(
                                    text: 'Dentist ABC Medical Center',
                                    fontSize: 14.sp,
                                    color: AppColors.greyTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(SolarIconsOutline.calendar, size: 18.sp, color: Colors.white),
                                  Gap(12.w),
                                  NormalText(
                                    text: '7 October 2021',
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: AppFontWeight.semiBold,
                                  ),
                                ],
                              ),
                              Gap(12.h),
                              Row(
                                children: [
                                  Icon(SolarIconsOutline.clockCircle, size: 18.sp, color: Colors.white),
                                  Gap(12.w),
                                  NormalText(
                                    text: '08:00 AM -10:00 AM',
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: AppFontWeight.semiBold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                            width: 50.w,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(SolarIconsBold.plain3, color: AppColors.greenColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: 3,
              controller: pageController,
            ),
          ),
          const Spacer(),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: WormEffect(
              activeDotColor: AppColors.paginationColor,
              dotColor: AppColors.paginationColor.withValues(alpha: 0.2),
              dotHeight: 3.h,
              dotWidth: 15.w,
            ),
          ),
        ],
      ),
    );
  }
}