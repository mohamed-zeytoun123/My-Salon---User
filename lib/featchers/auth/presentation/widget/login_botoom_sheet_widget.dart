import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/confirm_login_button_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/forgot_password_button_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/guest_join_link_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/login_form_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/sign_up_prompt_widget.dart';

class LoginBottomSheetWidget extends StatefulWidget {
  const LoginBottomSheetWidget({super.key});

  @override
  State<LoginBottomSheetWidget> createState() => _LoginBottomSheetWidgetState();
}

class _LoginBottomSheetWidgetState extends State<LoginBottomSheetWidget> {
  final phoneController = PhoneController(
    initialValue: const PhoneNumber(
      isoCode: IsoCode.SY,
      nsn: "9XXXXXXXX",
    ),
  );

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BottomSheetWidget(
        height: 490,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 30.w),
            child: Column(
              spacing: 10.h,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    "Welcome, use your phone to sign on".tr(),
                    style: AppTextStyles.whid18w400
                        .copyWith(color: Color(0xff000000)),
                  ),
                ),
                LoginFormWidget(
                  formKey: _formKey,
                  phoneController: phoneController,
                  passwordController: passwordController,
                ),
                ForgotPasswordButtonWidget(),
                ConfirmLoginButtonWidget(
                  formKey: _formKey,
                  phoneController: phoneController,
                  passwordController: passwordController,
                ),
                SignUpPromptWidget(),
                GuestJoinLinkWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
