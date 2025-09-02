import 'dart:developer';

import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/Widgets/base/logo_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/count_down_timer_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/o_t_p_Instructions_Widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/o_t_p_input_widget.dart';

class OtpNumberPage extends StatelessWidget {
  const OtpNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundColorPages(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 112.h),
              child: LogoWidget(width: 100, height: 100)),
          Expanded(
            child: BottomSheetWidget(
                height: 615,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OtpInstructionsWidget(),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            spacing: 17.h,
                            children: [
                              OTPInputWidget(),
                              TextButtonColorMainWidget(
                                  width: 280,
                                  hight: 46,
                                  label: "Confirm",
                                  onPressed: () {
                                    log("dfd");
                                    FlushbarHelper.showSnackBar(
                                      context: context,
                                      message: "Number is Not Vallid",
                                      backgroundColor: Colors.redAccent,
                                      duration: const Duration(seconds: 3),
                                      icon: Icons.error_outline,
                                    );

                                    // FlushbarHelper.showFlushbar(
                                    //   context: context,
                                    //   backgroundColor: Colors.red,
                                    //   message: "Number is Not Vallid",
                                    //   iconData: Icons.error_outline,
                                    //   iconColor: Colors.white,
                                    //   sizeIcon: 28,
                                    //   mainButtonText: "OK",
                                    //   mainButtonOnPressed: () {
                                    //     Navigator.pop(context);
                                    //   },
                                    //   duration: const Duration(seconds: 5),
                                    //   isShowProgress: true,
                                    //   progressColor: Colors.white,
                                    // );
                                  }),
                              CountdownTimerWidget(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn't receive a Code? ".tr(),
                                    style: AppTextStyles
                                        .b0x16w700SFProDisplayHeavy,
                                  ),
                                  InkWell(
                                    child: Text(
                                      "Resend Code".tr(),
                                      style: AppTextStyles
                                          .b0x16w700SFProDisplayHeavy
                                          .copyWith(
                                        color: Color(0xffA64D79),
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffA64D79),
                                        decorationThickness: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
