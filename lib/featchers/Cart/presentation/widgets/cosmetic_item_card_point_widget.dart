// ignore_for_file: deprecated_member_use

import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/data/model/point_reward_item_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CosmeticItemCardPointWidget extends StatelessWidget {
  const CosmeticItemCardPointWidget({super.key, required this.item});
  final PointRewardItemModelDUMMY item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      width: 184.w,
      height: 200.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.r,
            offset: Offset(0, 5),
          ),
        ],
        color: Color(0xffFCFCFC),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Stack(
                children: [
                  Image.network(
                    item.appImage,
                    width: double.infinity,
                    height: 90.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromARGB(144, 139, 28, 149),
                            Color(0x2A0A18A1).withOpacity(0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.w,
                    top: 70.h,
                    child: Text(
                      item.serviceType.name,
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.25.w),
            child: Container(
              width: 52.w,
              height: 52.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3.w),
                image: DecorationImage(
                  image: NetworkImage(item.appImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 9.w,
            top: 110.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Color(0xff121212),
                  ),
                ),
                Text(item.location,
                    style: AppTextStyles.whit10w400
                        .copyWith(color: Color(0xff666666))),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
                  child: Column(
                    children: [
                      Row(
                        spacing: 5.w,
                        children: [
                          Image.asset(
                            AppIcon.point,
                            fit: BoxFit.cover,
                            color: Color(0xff3E0C0C),
                          ),
                          Text(
                            "${item.points} Point".tr(),
                            style: AppTextStyles.whit16w700
                                .copyWith(color: Color(0xff3E0C0C)),
                          ),
                        ],
                      ),
                      Text(
                        "${item.bookingDate.day} - ${item.bookingDate.month} - ${item.bookingDate.year}".tr(),
                        style: AppTextStyles.whit10w400.copyWith(
                            color: Color(0xff666666),
                            fontWeight: FontWeight.w200,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
