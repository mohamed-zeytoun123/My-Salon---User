import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/auth/presentation/page/create_new_account_page.dart';

class SignUpPromptWidget extends StatelessWidget {
  const SignUpPromptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Don't Have An Account ?".tr(),
            style: AppTextStyles.black20w400SFProDisplayHeavy
                .copyWith(fontSize: 18.sp, color: Color(0xff515151)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
          child: TextButtonWhiteWidget(
            width: 280,
            hight: 46,
            label: "Sign up",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          CreateNewAccountPage()));
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => BlocProvider.value(
              //       value: BlocProvider.of<AuthCubit>(context),
              //       child: CreateNewAccountPage(),
              //     ),
              //   ),
              // );
            },
            borderColor: Color(0xff3F1428),
            appTextStyles: AppTextStyles.black17w500SFProDisplayHeavy,
          ),
        ),
      ],
    );
  }
}
