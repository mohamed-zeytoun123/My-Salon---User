import 'dart:developer';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/my_profile_change_password_page.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/change_language_widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/notification_switch_widget.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:my_salon/featchers/auth/presentation/page/login_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSettingsWidget extends StatelessWidget {
  const ItemSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings".tr(),
              style: AppTextStyles.white24w400Meditative.copyWith(
                color: Color(0xff43152A),
              ),
            ),
            CustomBorderButtonWidget(
              text: "Change Password",
              onTap: () {
                log("Change Password");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyProfileChangePasswordPage()));
              },
            ),
            ChangeLanguageWidget(),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffE3E3E3),
                  width: 2.w,
                ),
                borderRadius: BorderRadius.circular(15.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "App Notifications".tr(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  NotificationSwitchWidget(
                    onToggle: (isEnabled) {
                      if (isEnabled) {
                        log("Notifications Enabled");
                      } else {
                        log("Notifications Disabled");
                      }
                    },
                  ),
                ],
              ),
            ),
            CustomBorderButtonWidget(
                text: "Log Out",
                showIcon: false,
                colorBorder: Color(0xffC01515),
                colorText: Color(0xffC01515),
                onTap: () {
                  log("Log Out");
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: AppColors.colorThird,
                      title: Text('Confirm Logout'.tr()),
                      content: Text('Are you sure you want to log out?'.tr()),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Cancel'.tr()),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            log("Log Out confirmed");
                            context.read<AppManagerCubit>().logout();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => BlocProvider(
                                  create: (context) => AuthCubit(
                                      repository: appLocator<AuthRepostory>()),
                                  child: LoginPage(),
                                ),
                              ),
                            );
                          },
                          child: Text('Log Out'.tr()),
                        ),
                      ],
                    ),
                  );
                }),
            CustomBorderButtonWidget(
              text: "Delete My Account",
              showIcon: false,
              colorBorder: Color(0xffC01515),
              colorText: Color(0xffC01515),
              onTap: () {
                log("Delete My Account");
              },
            ),
          ],
        ),
      ),
    );
  }
}
