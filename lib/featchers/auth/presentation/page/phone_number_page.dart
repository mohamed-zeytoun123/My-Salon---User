import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/colors/background_color_pages.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/base/logo_widget.dart';
import 'package:my_salon/featchers/auth/presentation/page/o_t_p_number_page.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final phoneController = PhoneController(
    initialValue: const PhoneNumber(
      isoCode: IsoCode.SY, // سوريا
      nsn: "9XXXXXXXX", // الرقم بدون كود الدولة
    ),
  );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 112.h),
                  child: LogoWidget(width: 100, height: 100)),
              Expanded(
                  child: BottomSheetWidget(
                      height: 611,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.w, vertical: 10.h),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phone Number".tr(),
                                style: AppTextStyles.c45w400Meditative,
                              ),
                              Text(
                                "Enter your number to send OTP Number".tr(),
                                style:
                                    AppTextStyles.black17w500SFProDisplayHeavy,
                              ),
                              SizedBox(height: 30.h),
                              Align(
                                alignment: Alignment.center,
                                child: InputPhoneNumberWidget(
                                    controller: phoneController),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 130.h),
                                  child: TextButtonColorMainWidget(
                                    width: 280,
                                    hight: 46,
                                    label: "Next",
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    OtpNumberPage()));
                                      }
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
