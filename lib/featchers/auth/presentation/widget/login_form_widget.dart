import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.phoneController,
    required this.passwordController,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final PhoneController phoneController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 20.h,
        children: [
          InputPhoneNumberWidget(controller: phoneController),
          InputPassowrdWidget(
            controller: passwordController,
            hintText: "password",
          ),
        ],
      ),
    );
  }
}
