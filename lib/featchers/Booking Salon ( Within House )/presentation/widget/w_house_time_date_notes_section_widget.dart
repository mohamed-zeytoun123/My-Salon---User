import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Toggle_Option_Selector_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_booking_confirmation_page.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_salon_booking_confirmation_page.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/provider_selector_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Selectable_Button_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHouseTimeDateNotesSectionWidget extends StatefulWidget {
  const WHouseTimeDateNotesSectionWidget({super.key, required this.option1});
  final Option option1;

  @override
  State<WHouseTimeDateNotesSectionWidget> createState() =>
      _WHouseTimeDateNotesSectionWidgetState();
}

class _WHouseTimeDateNotesSectionWidgetState
    extends State<WHouseTimeDateNotesSectionWidget> {
  TextEditingController textNotificationcontroller = TextEditingController();
  @override
  void dispose() {
    textNotificationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('dd-MM-yyyy', context.locale.toString())
        .format(DateTime.now());
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time & Date".tr(),
          style: AppTextStyles.c24w400Meditative
              .copyWith(color: Color(0xff383838)),
        ),
        Text(
          "Choose the  date".tr(),
          style: AppTextStyles.whit16w700.copyWith(color: Color(0xff303148)),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          width: double.infinity,
          height: 55.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Color(0xffD9D9D9)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                today.tr(),
                style:
                    AppTextStyles.whit16w700.copyWith(color: Color(0xff121212)),
              ),
              Icon(
                Icons.date_range_outlined,
                size: 30.sp,
                color: Color(0xff000000),
              ),
            ],
          ),
        ),
        Text(
          "Choose the Time".tr(),
          style: AppTextStyles.whit16w700.copyWith(color: Color(0xff000000)),
        ),
        ToggleOptionSelectorWidget(
          options: DummyData.optionsDUMMY,
          isSelectable: false,
        ),
        //*_________________________________________
        Text(
          "Choose Technique".tr(),
          style: AppTextStyles.c24w400Meditative
              .copyWith(color: Color(0xff383838)),
        ),
        ProviderSelectorWidget(
          providers: DummyData.providerListDUMMY,
          isEnabled: false,
        ),

        //*_________________________________________
        Text(
          "Add your Nots".tr(),
          style: AppTextStyles.whit20w400.copyWith(color: Color(0xff383838)),
        ),
        InputDottedTextfieldWidget(
          hintText: "add your notifications",
          controller: textNotificationcontroller,
          height: 107,
        ),
        Padding(
          padding:  EdgeInsets.only(top: 30.h, bottom: 10.h),
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
                  }),
              TextButtonWhiteWidget(
                width: 160,
                hight: 55,
                label: "Confirm Booking And Pay",
                borderColor: Color(0xffE3E3E3),
                appTextStyles: AppTextStyles.white13w400
                    .copyWith(color: AppColors.colorThird),
                buttonColor: Color(0xff3E0C0C),
                onPressed: () {
                  log("Confirm Booking And Pay");

                  if (widget.option1 == Option.home) {
                    log(widget.option1.name);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WHouseBookingConfirmationPage(),
                      ),
                    );
                  }
                  if (widget.option1 == Option.salon) {
                    log(widget.option1.name);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WSalonBookingConfirmationPage(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
