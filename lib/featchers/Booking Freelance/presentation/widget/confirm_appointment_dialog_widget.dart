import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmAppointmentDialogWidget extends StatefulWidget {
  const ConfirmAppointmentDialogWidget({super.key, required this.optionselect});
  final BookingDateTime optionselect;
  @override
  State<ConfirmAppointmentDialogWidget> createState() =>
      _ConfirmAppointmentDialogWidgetState();
}

class _ConfirmAppointmentDialogWidgetState
    extends State<ConfirmAppointmentDialogWidget> {
  bool isdisplaywidget = true;
  late DateTime selectedDate;
  late String monthName;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    selectedDate = DateTime(
      widget.optionselect.date.year,
      widget.optionselect.date.month,
      widget.optionselect.date.day,
    );

    final locale = context.locale.toString();
    monthName = DateFormat('MMMM', locale).format(selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    if (isdisplaywidget) {
      return Container(
        width: 369.w,
        height: 369.h,
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            color: AppColors.colorThird,
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          spacing: 25.h,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Please Confirm The Appointment".tr(),
              style:
                  AppTextStyles.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            DottedBorder(
              color: const Color(0xFF4A172E),
              strokeWidth: 1.w,
              dashPattern: const [2, 2],
              borderType: BorderType.RRect,
              radius: Radius.circular(15.r),
              child: Container(
                width: 347.w,
                height: 92.h,
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6E6E6),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  spacing: 10.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date : $monthName  - ${widget.optionselect.date.day} - ${widget.optionselect.date.year} ".tr(),
                      style: AppTextStyles.whit16w700
                          .copyWith(color: Color(0xff303148)),
                    ),
                    Text(
                      "Time : ${widget.optionselect.hour} - ${widget.optionselect.minute.toString()..padLeft(2, '0')} ${widget.optionselect.period.name}".tr(),
                      style: AppTextStyles.whit16w700
                          .copyWith(color: Color(0xff303148)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              spacing: 10.h,
              children: [
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Confirm Appointment",
                  borderColor: const Color(0xffE3E3E3),
                  appTextStyles: AppTextStyles.white16w700
                      .copyWith(color: AppColors.colorThird),
                  buttonColor: const Color(0xff3E0C0C),
                  onPressed: () {
                    log("Confirm Appointment");
                    setState(() {
                      isdisplaywidget = false;
                    });
                  },
                ),
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Other Date",
                  borderColor: const Color(0xff3E0C0C),
                  appTextStyles: AppTextStyles.white16w700
                      .copyWith(color: Color(0xff3E0C0C)),
                  buttonColor: AppColors.colorThird,
                  onPressed: () {
                    Navigator.pop(context);
                    log("Other Date");
                  },
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        width: 369.w,
        height: 259.h,
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
            color: AppColors.colorThird,
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          spacing: 25.h,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Services Added To\nThe Card".tr(),
              style:
                  AppTextStyles.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            Column(
              spacing: 10.h,
              children: [
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Continue to Payment",
                  borderColor: const Color(0xffE3E3E3),
                  appTextStyles: AppTextStyles.white16w700
                      .copyWith(color: AppColors.colorThird),
                  buttonColor: const Color(0xff3E0C0C),
                  onPressed: () {
                    log("Continue to Payment");
                  },
                ),
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Confirm and continue shopping",
                  borderColor: const Color(0xff3E0C0C),
                  appTextStyles: AppTextStyles.white16w700
                      .copyWith(color: Color(0xff3E0C0C)),
                  buttonColor: AppColors.colorThird,
                  onPressed: () {
                    Navigator.pop(context);
                    log("Confirm and continue shopping");
                  },
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}
