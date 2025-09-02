import 'dart:developer';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/my_profile_o_t_p_number_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileChangePasswordPage extends StatefulWidget {
  const MyProfileChangePasswordPage({super.key});

  @override
  State<MyProfileChangePasswordPage> createState() =>
      _MyProfileChangePasswordPageState();
}

class _MyProfileChangePasswordPageState
    extends State<MyProfileChangePasswordPage> {
  final TextEditingController passswordController = TextEditingController();

  final TextEditingController confirmController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passswordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: CustomAppBarWidget(
        title: "Change Password",
        color: Color(0xffF1F1F1),
      ),
      body: BottomSheetWidget(
          height: (MediaQuery.of(context).size.height) - 150.h,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10.h,
                  children: [
                    Text(
                      "New Password".tr(),
                      style: AppTextStyles.white14w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    InputPassowrdWidget(
                      controller: passswordController,
                      hintText: "************************",
                    ),
                    Text(
                      "Confirm Password".tr(),
                      style: AppTextStyles.white14w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    InputPassowrdWidget(
                      controller: confirmController,
                      hintText: "************************",
                    ),
                    SizedBox(height: 100.h),
                    Center(
                        child: TextButtonColorMainWidget(
                            width: 301,
                            hight: 50,
                            label: "Create New Password",
                            onPressed: () {
                              //*12121212121212121212121212121212121212121212121212121212121212121212121212
                              if (formKey.currentState!.validate()) {
                                if (passswordController.text !=
                                    confirmController.text) {
                                  FlushbarHelper.showSnackBar(
                                      context: context,
                                      message: "Passwords do not match!",
                                      backgroundColor: Colors.redAccent,
                                      duration: const Duration(seconds: 3),
                                      icon: Icons.cancel);
                                } else {
                                  log("New Password: ${confirmController.text}");
                                  FlushbarHelper.showSnackBar(
                                      context: context,
                                      message: "Password changed successfully!",
                                      backgroundColor: Colors.green,
                                      duration: const Duration(seconds: 3),
                                      icon: Icons.check);

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyProfileOTPNumberPage()));
                                }
                              }
                              //*12121212121212121212121212121212121212121212121212121212121212121212121212
                            }))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
