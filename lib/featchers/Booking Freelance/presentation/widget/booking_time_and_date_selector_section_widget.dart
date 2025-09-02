import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/enum_Time_Period_model.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/data/model/option_model_dummy.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Confirm_Appointment_Dialog_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Expandable_Date_Selector_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Toggle_Option_Selector_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingTimeAndDateSelectorSectionWidget extends StatefulWidget {
  const BookingTimeAndDateSelectorSectionWidget(
      {super.key, required this.price});

  final double price;
  @override
  State<BookingTimeAndDateSelectorSectionWidget> createState() =>
      _BookingTimeAndDateSelectorSectionWidgetState();
}

class _BookingTimeAndDateSelectorSectionWidgetState
    extends State<BookingTimeAndDateSelectorSectionWidget> {
  late BookingDateTime optionselect;
  List<OptionModelDUMMY> availableOptions = [];
  DateTime? lastSelectedDate;
  BookingTime? selectedTimeOption;
  bool _isSnackBarVisible = false;

  @override
  void initState() {
    super.initState();
    optionselect = BookingDateTime(
      date: BookingDate(day: 0, month: 0, year: 0),
      hour: 0,
      minute: 0,
      period: TimePeriod.AM,
    );
  }

  void updateOptionsForDate(BookingDate date) {
    if (!isDateTimeDisabled(date)) {
      final normalizedDate = DateTime(date.year, date.month, date.day);
      setState(() {
        availableOptions = DummyData.optionsPerDateDUMMY[normalizedDate] ?? [];
        optionselect = optionselect.copyWith(
          date: date,
          hour: 0,
          minute: 0,
          period: TimePeriod.AM,
        );
      });
    } else {
      FlushbarHelper.showSnackBar(
          context: context,
          message: "This day is closed or full",
          backgroundColor: Colors.redAccent,
          duration: const Duration(seconds: 3),
          icon: Icons.error_outline_rounded);
    }
  }

  bool isDateTimeDisabled(BookingDate date) {
    DateTime selectedDate = DateTime(date.year, date.month, date.day);
    return DummyData.disabledDatesListDUMMY.any((disabled) =>
        disabled.year == selectedDate.year &&
        disabled.month == selectedDate.month &&
        disabled.day == selectedDate.day);
  }

  void updateTimeOption(BookingTime selectedTime) {
    setState(() {
      optionselect = optionselect.copyWith(
        hour: selectedTime.hour,
        minute: selectedTime.minute,
        period: selectedTime.period,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandableDateSelectorWidget(
            onQuantitySelected: (selectDate) {
              final selectedDateTime =
                  DateTime(selectDate.year, selectDate.month, selectDate.day);

              if (lastSelectedDate == null ||
                  lastSelectedDate != selectedDateTime) {
                setState(() {
                  lastSelectedDate = selectedDateTime;

                  optionselect = optionselect.copyWith(
                    date: selectDate,
                  );
                  updateOptionsForDate(selectDate);
                });
              }
            },
            disabledDates: DummyData.disabledDatesListDUMMY),
        Text(
          "Choose the Time".tr(),
          style: AppTextStyles.whit16w700.copyWith(color: const Color(0xff303148)),
        ),
        ToggleOptionSelectorWidget(
          options: availableOptions,
          isSelectable: true,
          selectedTime: selectedTimeOption,
          onQuantitySelected: (selectedTime) {
            updateTimeOption(selectedTime);
          },
        ),
        Row(
          spacing: 5.w,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              spacing: 10.h,
              children: [
                Text(
                  "Total".tr(),
                  style: AppTextStyles.white14w400
                      .copyWith(color: const Color(0xff515151)),
                ),
                Text(
                  "${widget.price}\$".tr(),
                  style: AppTextStyles.whit24w700
                      .copyWith(color: const Color(0xff383838)),
                )
              ],
            ),
            Expanded(
              child: TextButtonWhiteWidget(
                width: 280,
                hight: 56,
                label: "Confirm Booking",
                borderColor: const Color(0xffE3E3E3),
                appTextStyles: AppTextStyles.white16w700
                    .copyWith(color: AppColors.colorThird),
                buttonColor: const Color(0xff3E0C0C),
                onPressed: () {
                  if (_isSnackBarVisible) return;
                  setState(() {
                    _isSnackBarVisible = true;
                  });

                  if (optionselect.date.day != 0 && optionselect.hour != 0) {
                    FlushbarHelper.showSnackBar(
                        context: context,
                        message: "Selection confirmed",
                        backgroundColor: Colors.green,
                        duration: const Duration(seconds: 3),
                        icon: Icons.check);

                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                              child: ConfirmAppointmentDialogWidget(
                                optionselect: optionselect,
                              ),
                            ));
                    log("${optionselect.date.day} - ${optionselect.date.month} - ${optionselect.date.year} \t  ${optionselect.time.formattedTime} ${optionselect.time.period.name}");
                  } else {
                    FlushbarHelper.showSnackBar(
                      context: context,
                      message: "Please Select Time",
                      backgroundColor: Colors.redAccent,
                      duration: const Duration(seconds: 3),
                      icon: Icons.error_outline,
                    );
                  }

                  Future.delayed(const Duration(seconds: 3), () {
                    setState(() {
                      _isSnackBarVisible = false;
                    });
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
