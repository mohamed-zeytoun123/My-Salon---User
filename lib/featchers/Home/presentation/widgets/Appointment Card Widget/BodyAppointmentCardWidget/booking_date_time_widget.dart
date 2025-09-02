import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingDateTimeWidget extends StatelessWidget {
  final BookingDateTime bookingDateTime;

  const BookingDateTimeWidget({
    super.key,
    required this.bookingDateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          spacing: 5.w,
          children: [
            Icon(
              Icons.calendar_today,
              size: 15.sp,
              color: Color(0xff000000),
            ),
            Text(
              "From : ${bookingDateTime.date.day} - ${bookingDateTime.date.month} - ${bookingDateTime.date.year}".tr(),
              style: AppTextStyles.whit10w700.copyWith(color: Color(0xff515151)),
            ),
          ],
        ),
        Row(
          spacing: 5.w,
          children: [
            Icon(
              Icons.access_time,
              size: 15.sp,
              color: Color(0xff000000),
            ),
            Text(
              "From : ${bookingDateTime.hour.toString().padLeft(2, '0')} : ${bookingDateTime.minute.toString().padLeft(2, '0')} ${bookingDateTime.period.name.toString()}".tr(),
              style: AppTextStyles.whit10w700.copyWith(
                color: Color(0xff515151),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
