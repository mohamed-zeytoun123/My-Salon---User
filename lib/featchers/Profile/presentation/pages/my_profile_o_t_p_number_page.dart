import 'package:my_salon/core/Widgets/base/logo_widget.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/My_Profile_Page.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/count_down_timer_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/o_t_p_input_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/colors/Background_color_pages.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileOTPNumberPage extends StatelessWidget {
  const MyProfileOTPNumberPage({super.key});

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
                      EdgeInsets.symmetric(vertical: 35.h, horizontal: 44.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OTP Number".tr(),
                          style: AppTextStyles.w0x45w400Meditative,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Enter the Code Sent to ".tr(),
                                style: AppTextStyles.b0x16w700SFProDisplayHeavy,
                              ),
                              TextSpan(
                                text: "******94".tr(),
                                style: AppTextStyles.b0x16w700SFProDisplayHeavy
                                    .copyWith(
                                  color: Color(0xffA64D79),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xffA64D79),
                                  decorationThickness: 1,
                                ),
                              ),
                              TextSpan(
                                text: " to Continue Log in Registration".tr(),
                                style: AppTextStyles.b0x16w700SFProDisplayHeavy,
                              ),
                            ],
                          ),
                        ),
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
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyProfilePage()),
                                      (Route<dynamic> route) => false,
                                    );
                                  }),
                              CountdownTimerWidget(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn’t receive a Code? ".tr(),
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
