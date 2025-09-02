import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/pages/loyalty_points_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoyaltyPointsRedeemWidget extends StatelessWidget {
  const LoyaltyPointsRedeemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Redeem for loyalty points".tr(),
              style: AppTextStyles.whit16w700.copyWith(color: Color(0xff898A8D)),
            ),
            Row(
              spacing: 5.w,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "You have 10 points worth \$70".tr(),
                  style:
                      AppTextStyles.white13w400.copyWith(color: Color(0xff898A8D)),
                ),
                Image(
                  image: AssetImage(AppIcon.point),
                  fit: BoxFit.cover,
                  color: Color(0xff898A8D),
                ),
              ],
            )
          ],
        ),
        TextButtonWhiteWidget(
          width: 120,
          hight: 50,
          label: "Redeem points",
          borderColor: const Color(0xffE3E3E3),
          appTextStyles:
              AppTextStyles.whit16w700.copyWith(color: AppColors.colorThird),
          buttonColor: const Color(0xff3E0C0C),
          onPressed: () {
            log("Redeem points");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoyaltyPointsPage()));
          },
        ),
      ],
    );
  }
}
