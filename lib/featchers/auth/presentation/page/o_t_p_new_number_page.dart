import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/featchers/Home/presentation/pages/home_content_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/count_down_timer_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/o_t_p_input_widget.dart';

class OtpNewNumberPage extends StatelessWidget {
  const OtpNewNumberPage({super.key, required this.lastTwo});
  final String lastTwo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Column(
          spacing: 6.h,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 52.h, bottom: 18.h, left: 18.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24.sp,
                    )),
              ),
            ),
            Expanded(
                child: BottomSheetWidget(
                    height: 827,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 20.h),
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 10.h,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Verify Phone Number".tr(),
                              style: AppTextStyles.black32w400
                                  .copyWith(color: Color(0xff383838)),
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Enter the Code Sent to ".tr(),
                                    style: AppTextStyles
                                        .b0x16w700SFProDisplayHeavy,
                                  ),
                                  TextSpan(
                                    text: "******$lastTwo".tr(),
                                    style: AppTextStyles
                                        .b0x16w700SFProDisplayHeavy
                                        .copyWith(
                                      color: Color(0xffA64D79),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xffA64D79),
                                      decorationThickness: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " to Continue Log in Registration".tr(),
                                    style: AppTextStyles
                                        .b0x16w700SFProDisplayHeavy,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                spacing: 10.h,
                                children: [
                                  OTPInputWidget(),
                                  TextButtonColorMainWidget(
                                      width: 280,
                                      hight: 46,
                                      label: "Confirm",
                                      onPressed: () {
                                        // context.go(RoutesPath.homeContent);
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeContentPage()),
                                          (route) => false,
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
                                            decoration:
                                                TextDecoration.underline,
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
                    )))
          ],
        ),
      ),
    );
  }
}
