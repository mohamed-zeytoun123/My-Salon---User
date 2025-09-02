// ignore_for_file: file_names
import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/pages/home_content_page.dart';

class GuestJoinLinkWidget extends StatelessWidget {
  const GuestJoinLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        child: Text(
          "Join as a Guest".tr(),
          style: AppTextStyles.black18w400SFProDisplayHeavy.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: Color(0xff26263C),
            decorationThickness: 1.5,
            color: Color(0xff26263C),
            fontSize: 16.sp,
          ),
        ),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => HomeContentPage()),
            (route) => false,
          );
          //  context.go(RoutesPath.homeContent);
          log("Join as a Guest");
        },
      ),
    );
  }
}
