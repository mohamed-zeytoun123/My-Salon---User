import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/auth/presentation/page/phone_number_page.dart';

class ForgotPasswordButtonWidget extends StatelessWidget {
  const ForgotPasswordButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        child: Text(
          "Forget Password ?".tr(),
          style: AppTextStyles.black18w400SFProDisplayHeavy.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: Color(0xff909090),
              decorationThickness: 1.5,
              color: Color(0xff909090),
              fontSize: 16.sp),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PhoneNumberPage()));
        },
      ),
    );
  }
}
