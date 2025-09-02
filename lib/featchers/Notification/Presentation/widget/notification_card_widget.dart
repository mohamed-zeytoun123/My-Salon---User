// ignore_for_file: file_names

import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    super.key,
    required this.appImage,
    required this.userName,
    required this.messageText,
    required this.date,
  });
  final String appImage;
  final String userName;
  final String messageText;
  final BookingDate date;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 105.h,
          margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: Color(0xffA9ADB9),
              )),
          padding:
              EdgeInsets.only(left: 10.w, right: 10.w, top: 30.h, bottom: 7.h),
          child: Column(
            spacing: 5.h,
            children: [
              Expanded(
                child: Text(
                  messageText,
                  style: AppTextStyles.white14w400
                      .copyWith(color: Color(0xff3C3C3C)),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "${date.day} - ${date.month} - ${date.year}".tr(),
                  style: AppTextStyles.whit10w400.copyWith(
                    color: Color(0xff3C3C3C),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10.h,
          left: 27.w,
          child: Row(
            spacing: 5.w,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 17.r,
                backgroundImage: NetworkImage(appImage),
              ),
              Text(
                userName,
                style: AppTextStyles.black16w700.copyWith(
                  color: Color(0xff303030),
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
