import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/dialog_gift_for_friend_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftFriendWidget extends StatelessWidget {
  const GiftFriendWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 53.h,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEBEBEB)),
          borderRadius: BorderRadius.circular(10.r)),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 5.w,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 17.w
                  ,
                  height: 20.h,
                  child: Image.asset(
                    AppIcon.giftfriend,
                    fit: BoxFit.cover,
                  )),
              Text(
                "Gift for a friend".tr(),
                style:
                    AppTextStyles.black16w700.copyWith(color: Color(0xff000000)),
              )
            ],
          ),
          TextButtonWhiteWidget(
            width: 90,
            hight: 40,
            label: "Apply",
            borderColor: const Color(0xffE3E3E3),
            appTextStyles:
                AppTextStyles.whit16w700.copyWith(color: AppColors.colorThird),
            buttonColor: const Color(0xff3E0C0C),
            onPressed: () {
              log("Apply");
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: AppColors.colorThird,
                  child: DialogGiftForFriendWidget(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
