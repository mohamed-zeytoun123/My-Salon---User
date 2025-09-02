import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/featchers/Booking%20Freelance/data/model/option_model_dummy.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_Salon_Invoice_Details_Page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/enum_Time_Period_model.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/display_services_and_price_name_widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Expandable_Date_Selector_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/toggle_option_selector_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Provider_Selector_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Selectable_Button_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Services_With_Salon_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_Provider_Info_Tile_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WSalonBookingConfirmationPage extends StatefulWidget {
  const WSalonBookingConfirmationPage({super.key});

  @override
  State<WSalonBookingConfirmationPage> createState() =>
      _WSalonBookingConfirmationPageState();
}

class _WSalonBookingConfirmationPageState
    extends State<WSalonBookingConfirmationPage> {
  late BookingDateTime optionselect;
  List<OptionModelDUMMY> availableOptions = [];
  DateTime? lastSelectedDate;
  BookingTime? selectedTimeOption;
  TextEditingController textNotificationcontroller = TextEditingController();

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
        icon: Icons.error_outline_rounded,
      );
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
                onOptionSelected: (option) => log(option.name),
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
              Text(
                "Choose Professional".tr(),
                style: AppTextStyles.c24w400Meditative
                    .copyWith(color: const Color(0xff383838)),
              ),
              ProviderSelectorWidget(providers: DummyData.providerListDUMMY),
              ...List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ServicesWithSalonWidget(
                    service: AddServiceModel(title: "Services name", price: 26),
                    addedServices: [
                      AddServiceModel(title: "Services name", price: 26),
                      AddServiceModel(title: "Services name", price: 26),
                      AddServiceModel(title: "Services name", price: 26),
                    ],
                    index: index,
                  ),
                ),
              ),
              Text(
                "Add your Nots".tr(),
                style:
                    AppTextStyles.whit20w400.copyWith(color: Color(0xff383838)),
              ),
              InputDottedTextfieldWidget(
                hintText: "add your notifications",
                controller: textNotificationcontroller,
                height: 107,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButtonWhiteWidget(
                        width: 160,
                        hight: 55,
                        label: "Continue Shopping",
                        borderColor: Color(0xffE3E3E3),
                        appTextStyles: AppTextStyles.white13w400
                            .copyWith(color: Color(0xff57597E)),
                        buttonColor: AppColors.colorThird,
                        onPressed: () async {
                          log("Continue Shopping");
                          Navigator.pop(context);
                        }),
                    TextButtonWhiteWidget(
                      width: 160,
                      hight: 55,
                      label: "Confirm Booking And Pay",
                      borderColor: Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white13w400
                          .copyWith(fontSize: 12, color: AppColors.colorThird),
                      buttonColor: Color(0xff3E0C0C),
                      onPressed: () {
                        // double finalCost = 0;
                        // for (var service in widget.addedServices) {
                        //   finalCost += service.price * service.number;
                        // }

                        log("Confirm Booking And Pay");

                        // log("لك شووووووف : $finalCost");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WSalonInvoiceDetailsPage(),
                          ),
                        );
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

  @override
  void dispose() {
    textNotificationcontroller.dispose();
    super.dispose();
  }
}
