import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Account_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_More_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Settings_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileGuestPage extends StatelessWidget {
  const MyProfileGuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "My Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 10.h, bottom: 30.h),
                  child: Text(
                    "User Nmae".tr(),
                    style: AppTextStyles.white24w400Meditative
                        .copyWith(color: Color(0xff383838)),
                  ),
                ),
              ),
              Row(
                spacing: 10.w,
                children: [
                  TextButtonColorMainWidget(
                      width: double.infinity,
                      hight: 40,
                      label: "Register",
                      onPressed: () {
                        log("Register");
                      }),
                  TextButtonWhiteWidget(
                      width: double.infinity,
                      hight: 40,
                      label: "Sign In",
                      buttonColor: Color(0xffFFFFFF),
                      appTextStyles: AppTextStyles.white16w700
                          .copyWith(color: Color(0xff1A1A1A)),
                      borderColor: const Color.fromARGB(98, 158, 158, 158),
                      onPressed: () {
                        log("Sign In");
                      }),
                ],
              ),
              ItemAccountWidget(),
              ItemSettingsWidget(),
              ItemMoreWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
