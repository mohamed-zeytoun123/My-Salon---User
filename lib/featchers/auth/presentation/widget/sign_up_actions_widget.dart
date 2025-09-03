import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/featchers/Home/presentation/pages/home_content_page.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:my_salon/core/util/response_status_enum.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:my_salon/featchers/auth/data/model/sign_up_params.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_state.dart';
import 'package:my_salon/featchers/auth/presentation/page/failed_success_page.dart';

class SignUpActionsWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final PhoneController phoneNumberController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const SignUpActionsWidget({
    super.key,
    required this.formKey,
    required this.fullNameController,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocConsumer<AuthCubit, AuthState>(
          listenWhen: (pre, cur) => pre.signupState != cur.signupState,
          listener: (context, state) {
            if (state.signupState == ResponseStatusEnum.success) {
              FlushbarHelper.showSnackBar(
                title: "Great!",
                context: context,
                message: "Account created successfully 🎉",
                backgroundColor: Colors.green.shade600,
                duration: const Duration(seconds: 3),
                icon: Icons.check_circle,
                iconColor: Colors.white,
              );
              BlocProvider.of<AppManagerCubit>(context)
                  .saveUserDataInAppState(state.model!);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomeContentPage()),
                (route) => false,
              );
            } else if (state.signupError != null) {
              FlushbarHelper.showFlushbar(
                context: context,
                backgroundColor: Colors.red,
                mainButtonText: "OK",
                duration: Duration(seconds: 5),
                progressColor: Colors.white,
                message: state.signupError!.message,
                isShowProgress: true,
                iconColor: Colors.white,
                sizeIcon: 30,
                mainButtonOnPressed: () {
                  Navigator.pop(context);
                },
                iconData: Icons.error,
              );
            }
          },
          builder: (context, state) {
            if (state.signupState == ResponseStatusEnum.loading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return TextButtonColorMainWidget(
                width: 301,
                hight: 50,
                label: "Create New Account",
                onPressed: () {
                  if (formKey.currentState!.validate() &&
                      passwordController.text ==
                          confirmPasswordController.text) {
                    final GenderEnum stateGender =
                        context.read<AuthCubit>().state.gender;
                    final stateImage = context.read<AuthCubit>().state.image;
                    final phone =
                        "${phoneNumberController.value.countryCode.replaceAll('+', '')}${phoneNumberController.value.nsn}";

                    final SignUpParams params = SignUpParams(
                      name: fullNameController.text,
                      phone: phone,
                      email: emailController.text,
                      gender: stateGender,
                      image: stateImage,
                      password: passwordController.text,
                      passwordConfirmation: confirmPasswordController.text,
                    );
                    context.read<AuthCubit>().signUp(params);

                    // final number = phoneNumberController.value.nsn;
                    // final lastTwo = number.substring(number.length - 2);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => HomeContentPage()));
                  } else {
                    if (passwordController.text !=
                        confirmPasswordController.text) {
                      confirmPasswordController.clear();
                      passwordController.clear();
                      FlushbarHelper.showFlushbar(
                        context: context,
                        backgroundColor: Colors.red,
                        mainButtonText: "OK",
                        duration: Duration(seconds: 5),
                        progressColor: Colors.white,
                        message: "Passwords do not match!",
                        isShowProgress: true,
                        iconColor: Colors.white,
                        sizeIcon: 30,
                        mainButtonOnPressed: () {
                          Navigator.pop(context);
                        },
                        iconData: Icons.error,
                      );
                    }
                  }
                },
              );
            }
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? ".tr()),
            InkWell(
              child: Text(
                "Sign in".tr(),
                style: TextStyle(
                  color: Color(0xffA64D79),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffA64D79),
                  decorationThickness: 1,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FailedSuccessPage()));
              },
            )
          ],
        ),
        SizedBox(height: 20.h)
      ],
    );
  }
}
