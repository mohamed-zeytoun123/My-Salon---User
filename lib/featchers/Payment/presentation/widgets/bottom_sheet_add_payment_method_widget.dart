import 'dart:developer';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_c_v_v_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_day_and_month_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_name_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';

class BottomSheetAddPaymentMethodWidget extends StatefulWidget {
  const BottomSheetAddPaymentMethodWidget({
    super.key,
  });

  @override
  State<BottomSheetAddPaymentMethodWidget> createState() =>
      _BottomSheetAddPaymentMethodWidgetState();
}

class _BottomSheetAddPaymentMethodWidgetState
    extends State<BottomSheetAddPaymentMethodWidget> {
  TextEditingController controllerName = TextEditingController();

  PhoneController controllerNumber = PhoneController();

  TextEditingController controllerDate = TextEditingController();

  TextEditingController controllerCVV = TextEditingController();

  @override
  void dispose() {
    controllerName.dispose();
    controllerNumber.dispose();
    controllerDate.dispose();
    controllerCVV.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      height: 500.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Payment Method".tr(),
                style: AppTextStyles.white32w400Meditative
                    .copyWith(color: Color(0xff000000)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5.h,
                children: [
                  Text(
                    "Card Holder Name".tr(),
                    style: AppTextStyles.white14w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                  InputNameWidget(
                      controller: controllerName, hintText: "Ex : holder name"),
                  Text(
                    "Card Number".tr(),
                    style: AppTextStyles.white14w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                  InputPhoneNumberWidget(controller: controllerNumber),
                  SizedBox(height: 5.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 5.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expire Date".tr(),
                            style: AppTextStyles.white14w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                          InputDayAndMonthWidget(
                            controller: controllerDate,
                            hintText: 'MM / YY',
                            width: 145,
                          ),
                        ],
                      ),
                      Column(
                        spacing: 5.h,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV / CVS".tr(),
                            style: AppTextStyles.white14w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                          InputCVVWidget(
                            controller: controllerCVV,
                            hintText: "-----",
                            width: 145,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10.w,
                children: [
                  TextButtonWhiteWidget(
                    width: 150,
                    hight: 56,
                    onPressed: () {
                      log("Cancel");
                      Navigator.pop(context);
                    },
                    borderColor: Color(0xffE3E3E3),
                    label: "Cancel",
                    buttonColor: AppColors.colorThird,
                    appTextStyles: AppTextStyles.white14w700
                        .copyWith(color: Color(0xff1A1A1A)),
                  ),
                  TextButtonColorMainWidget(
                    width: 150,
                    hight: 56,
                    label: "Confirm",
                    onPressed: () {
                      Navigator.pop(context);
                      log("Confirm");
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                backgroundColor: AppColors.colorThird,
                                child: SizedBox(
                                  height: 190.h,
                                  width: 369.w,
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 15.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          spacing: 3.w,
                                          children: [
                                            Icon(
                                              Icons.check_circle,
                                              color: Color.fromARGB(
                                                  255, 24, 176, 100),
                                            ),
                                            Text(
                                              "The payment was".tr(),
                                              style: AppTextStyles.whit20ww700
                                                  .copyWith(
                                                      color: Color(0xff2A2A2A)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "completed successfully".tr(),
                                          style: AppTextStyles.whit20ww700
                                              .copyWith(
                                                  color: Color(0xff2A2A2A)),
                                        ),
                                        SizedBox(height: 30.h),
                                        TextButtonColorMainWidget(
                                            width: 297,
                                            hight: 56,
                                            label: "Done",
                                            onPressed: () {
                                              Navigator.pop(context);
                                              log("Done");
                                            })
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
