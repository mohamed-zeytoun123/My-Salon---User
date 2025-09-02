import 'dart:developer';
import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/enum_Time_Period_model.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/data/model/option_model_dummy.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/display_services_and_price_name_widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Expandable_Date_Selector_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/toggle_option_selector_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Display_Other_Services_Page.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Provider_Selector_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Selectable_Button_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_Provider_Info_Tile_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHouseBookingConfirmationPage extends StatefulWidget {
  const WHouseBookingConfirmationPage({super.key});

  @override
  State<WHouseBookingConfirmationPage> createState() =>
      _WHouseBookingConfirmationPageState();
}

class _WHouseBookingConfirmationPageState
    extends State<WHouseBookingConfirmationPage> {
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

  //! دالة لتحديث الأوقات المتاحة بناءً على التاريخ
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

  //! دالة للتأكد إذا كان التاريخ مغلق أو غير متاح
  bool isDateTimeDisabled(BookingDate date) {
    DateTime selectedDate = DateTime(date.year, date.month, date.day);
    return DummyData.disabledDatesListDUMMY.any((disabled) =>
        disabled.year == selectedDate.year &&
        disabled.month == selectedDate.month &&
        disabled.day == selectedDate.day);
  }

  //! دالة لتحديث الوقت المختار
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
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: AppColors.colorThird,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WProviderInfoTileWidget(),
              SelectableButtonWidget(
                isEnabled: false,
                onOptionSelected: (Option value) {
                  log(value.name);
                },
              ),
              DisplayServicesAndPriceNameWidget(
                name: "Services Name",
                price: 26,
              ),
              Text(
                "Choose the Date".tr(),
                style: AppTextStyles.c24w400Meditative
                    .copyWith(color: const Color(0xff383838)),
              ),
              ExpandableDateSelectorWidget(
                onQuantitySelected: (selectDate) {
                  final selectedDateTime = DateTime(
                      selectDate.year, selectDate.month, selectDate.day);
                  if (lastSelectedDate == null ||
                      lastSelectedDate != selectedDateTime) {
                    setState(() {
                      lastSelectedDate = selectedDateTime;
                      optionselect = optionselect.copyWith(date: selectDate);
                      updateOptionsForDate(selectDate);
                    });
                  }
                },
                disabledDates: DummyData.disabledDatesListDUMMY,
              ),
              Text(
                "Choose Technique".tr(),
                style: AppTextStyles.c24w400Meditative
                    .copyWith(color: Color(0xff383838)),
              ),
              ProviderSelectorWidget(
                providers: DummyData.providerListDUMMY,
              ),
              Text(
                "Choose the Time".tr(),
                style: AppTextStyles.c24w400Meditative
                    .copyWith(color: const Color(0xff383838)),
              ),
              ToggleOptionSelectorWidget(
                options: availableOptions,
                isSelectable: true,
                selectedTime: selectedTimeOption,
                onQuantitySelected: (selectedTime) {
                  updateTimeOption(selectedTime);
                },
              ),
              Padding(
                padding:  EdgeInsets.only(top: 50.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButtonWhiteWidget(
                      width: 160,
                      hight: 55,
                      label: "Continue Shopping",
                      borderColor: const Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white13w400
                          .copyWith(color: Color(0xff57597E)),
                      buttonColor: AppColors.colorThird,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WHouseDisplayOtherServicesPage()));
                        log("continue shopping");
                      },
                    ),
                    TextButtonWhiteWidget(
                      width: 160,
                      hight: 55,
                      label: "Continue",
                      borderColor: const Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white13w400
                          .copyWith(color: AppColors.colorThird),
                      buttonColor: const Color(0xff3E0C0C),
                      onPressed: () {
                        log("continue");

                        if (_isSnackBarVisible) return;
                        setState(() {
                          _isSnackBarVisible = true;
                        });

                        if (optionselect.date.day != 0 &&
                            optionselect.hour != 0) {
                          FlushbarHelper.showSnackBar(
                            context: context,
                            message: "Selection confirmed",
                            backgroundColor: Colors.green,
                            duration: const Duration(seconds: 3),
                            icon: Icons.check,
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      WHouseDisplayOtherServicesPage()));

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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
