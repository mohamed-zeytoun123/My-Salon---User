import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/f_a_q_page.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/privacy_poicy_page.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/contact_us_sheet_widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemMoreWidget extends StatelessWidget {
  const ItemMoreWidget({
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
              "More".tr(),
              style: AppTextStyles.white24w400Meditative.copyWith(
                color: Color(0xff43152A),
              ),
            ),
            CustomBorderButtonWidget(
                text: "Privacy Policey",
                onTap: () {
                  log("Privacy Policey");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyPoicyPage()));
                }),
            CustomBorderButtonWidget(
                text: "Rate Our app",
                onTap: () {
                  log("Rate Our app");
                }),
            CustomBorderButtonWidget(
              text: "Contact Us",
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(36.r)),
                  ),
                  builder: (context) => ContactUsSheetWidget(),
                );
              },
            ),
            CustomBorderButtonWidget(
              text: "FAQ",
              onTap: () {
                log("FAQ");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
