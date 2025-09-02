// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/provider_show_image_name_dis_widget.dart';
import 'package:my_salon/featchers/Cart/data/model/card_item_wallet_model_dummy.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Order_Details_With_Icon_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWalletWidget extends StatelessWidget {
  const CardItemWalletWidget({
    super.key,
    required this.model,
  });
  final CardItemWalletModelDUMMY model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383.w,
      height: 129.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4.r,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xffF6F6F6),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Row(
          children: [
            SizedBox(
              width: 16.w,
              height: 129.h,
              child: ColoredBox(color: Color(0xff43152A)),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: Column(
                  spacing: 10.h,
                  children: [
                    OrderDetailsWithIconWidget(
                      isUp: model.isUp,
                      orderId: 321,
                      date: BookingDate(day: 12, month: 6, year: 2024),
                      price: 1200,
                    ),
                    if (model.isShowProfile)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProviderShowImageNameDisWidget(
                            image: 'https://picsum.photos/124/86?random=165',
                            name: "Provider Name",
                            discription: "Skin Care Specialist",
                          ),
                          TextButtonWhiteWidget(
                              width: 108,
                              hight: 39,
                              label: "View Profile",
                              onPressed: () {
                                log("View Profile");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProviderProfilePage()));
                              },
                              borderColor: Color(0xffE3E3E3),
                              appTextStyles: AppTextStyles.white13w400.copyWith(
                                color: Color(0XFF000000),
                              )),
                        ],
                      )
                    else
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 5.w,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(149, 158, 158, 158),
                            radius: 20.r,
                            child: Center(
                              child: SizedBox(
                                width: 25.w,
                                height: 25.h,
                                child: Image.asset(
                                  AppIcon.giftfriend,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Friend - gift".tr(),
                            style: AppTextStyles.whit12w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
