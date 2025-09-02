import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:my_salon/core/Widgets/base/logo_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/featchers/auth/presentation/page/create_new_account_page.dart';
import 'package:my_salon/featchers/auth/presentation/page/phone_number_page.dart';
import 'package:my_salon/featchers/auth/presentation/widget/confirm_login_button_widget.dart';

class FailedSuccessPage extends StatefulWidget {
  const FailedSuccessPage({super.key});

  @override
  State<FailedSuccessPage> createState() => _FailedSuccessPageState();
}

class _FailedSuccessPageState extends State<FailedSuccessPage> {
  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final TextEditingController passwordController = TextEditingController();
  final phoneNumberController = PhoneController(
    initialValue: PhoneNumber(
      isoCode: IsoCode.SY,
      nsn: "9XXXXXXXX",
    ),
  );

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 112.h),
                  child: LogoWidget(width: 100, height: 100)),
              Expanded(
                  child: BottomSheetWidget(
                      height: 540,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 35.w, vertical: 20.h),
                        child: SingleChildScrollView(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5.h,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.h),
                              child: Text(
                                "Login",
                                style: AppTextStyles.w0x45w400Meditative,
                              ),
                            ),
                            InputPhoneNumberWidget(
                                controller: phoneNumberController),
                            SizedBox(height: 10.h),
                            InputPassowrdWidget(
                              controller: passwordController,
                              width: 350,
                              hintText: 'password',
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                child: Text(
                                  "Forget Password ?".tr(),
                                  style: AppTextStyles
                                      .black18w400SFProDisplayHeavy
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xffA64D79),
                                    decorationThickness: 1.5,
                                    color: Color(0xffA64D79),
                                    fontSize: 14.sp,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PhoneNumberPage()));
                                },
                              ),
                            ),
                            ConfirmLoginButtonWidget(
                              formKey: _globalKey,
                              phoneController: phoneNumberController,
                              passwordController: passwordController,
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "Don't Have An Account ?".tr(),
                              style: AppTextStyles.black20w400SFProDisplayHeavy
                                  .copyWith(
                                      fontSize: 18.sp,
                                      color: Color(0xff515151)),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15.h),
                                child: TextButtonWhiteWidget(
                                  width: 280,
                                  hight: 46,
                                  label: "Sign up",
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateNewAccountPage()));
                                  },
                                  borderColor: Color(0xff3F1428),
                                  appTextStyles: AppTextStyles
                                      .black17w500SFProDisplayHeavy,
                                ),
                              ),
                            ),
                          ],
                        )),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
