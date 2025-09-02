import 'dart:io';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/Input_email_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input%20image/input_image_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_gender_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_name_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_state.dart';
import 'package:my_salon/featchers/auth/presentation/widget/label_widget.dart';
import 'package:my_salon/featchers/auth/presentation/widget/sign_up_header_widget.dart';

class SignUpFormWidget extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final PhoneController phoneNumberController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const SignUpFormWidget({
    super.key,
    required this.fullNameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
    required this.confirmPasswordController,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SignUpHeaderWidget(),
          Center(
            child: BlocSelector<AuthCubit, AuthState, File?>(
              selector: (state) {
                return state.image;
              },
              builder: (context, state) {
                return InputImageWidget(
                  onImagePicked: (image) {
                    context.read<AuthCubit>().updateImage(image);
                  },
                );
              },
            ),
          ),
          labelWidget("Full Name"),
          InputNameWidget(
              icon: Icons.person_outline_rounded,
              controller: fullNameController,
              hintText: "John Doe"),
          labelWidget("Email"),
          InputEmailWidget(
              icon: Icons.mail_outline,
              controller: emailController,
              hintText: "Example@email.com"),
          labelWidget("Phone Number"),
          InputPhoneNumberWidget(
            controller: phoneNumberController,
          ),
          labelWidget("Password"),
          InputPassowrdWidget(
            controller: passwordController,
            hintText: '*****************',
          ),
          labelWidget("Confirm Password"),
          InputPassowrdWidget(
            controller: confirmPasswordController,
            hintText: '*****************',
          ),
          labelWidget("Gender"),
          BlocSelector<AuthCubit, AuthState, GenderEnum?>(
            selector: (state) {
              return state.gender;
            },
            builder: (context, state) {
              return InputGenderWidget(
                onChanged: (value) {
                  context.read<AuthCubit>().updateGender(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
