import 'dart:developer';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/about_button_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/loyalty_points_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderInfoHaderWidget extends StatelessWidget {
  const ProviderInfoHaderWidget({super.key, required this.isFreelance});
  final bool isFreelance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150.h,
      left: 0.w,
      right: 0.w,
      bottom: 0.h,
      child: Stack(
        children: [
          BottomSheetWidget(
            height: (MediaQuery.of(context).size.height) - 120.h,
            child: ColoredBox(
                color: AppColors.colorThird,
                child: Padding(
                  padding: EdgeInsets.only(top: 70.h),
                  child: Column(
                    children: [
                      Row(
                        spacing: 5.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Provider Name".tr(),
                            style: AppTextStyles.whit24w700
                                .copyWith(color: Color(0xff383838)),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                log("share");
                              },
                              borderRadius: BorderRadius.circular(100.r),
                              child: Padding(
                                padding:  EdgeInsets.all(6.0.r),
                                child: Icon(
                                  Icons.share_outlined,
                                  color: isFreelance
                                      ? Color.fromARGB(255, 82, 24, 47)
                                      : AppColors.colorSecondary,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Skin Care Specialist".tr(),
                        style: AppTextStyles.black15w400
                            .copyWith(color: Color(0xff666666)),
                      ),
                      Row(
                        spacing: 5.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AboutButtonWidget(
                            isFreelance: isFreelance,
                          ),
                          LoyaltyPointsButtonWidget(
                            isFreelance: isFreelance,
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
