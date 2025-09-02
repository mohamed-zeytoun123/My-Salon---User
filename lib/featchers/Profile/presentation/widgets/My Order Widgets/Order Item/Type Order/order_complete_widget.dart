import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:my_salon/featchers/Profile/data/model/order_complete_model_dummy.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/rating_order_page.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/form_order_widget.dart';
import 'package:flutter/material.dart';

class OrderCompleteWidget extends StatelessWidget {
  final OrderCompleteModelDUMMY model;
  const OrderCompleteWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return FormOrderWidget(
      height: 200,
      orderId: model.orderId,
      date: BookingDate(
          day: model.date.day, month: model.date.month, year: model.date.year),
      price: model.price,
      providerAppImage: model.providerAppImage,
      providerName: model.providerName,
      providerSpecialty: model.providerSpecialty,
      additionalWidgets: [
        Padding(
          padding:  EdgeInsets.only(top: 10.h),
          child: Column(
            spacing: 20.h,
            children: [
              if (!model.isGuest)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 20.w,
                  children: [
                    Text(
                      "Rating".tr(),
                      style: AppTextStyles.whit12w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    RatingStarsWidget(
                      rating: 2,
                      sizeStar: 20,
                      titleStyle: AppTextStyles.whit12w400FamiljenGrotesk
                          .copyWith(fontSize: 18.sp),
                    ),
                  ],
                )
              else
                Row(
                  spacing: 20.w,
                  children: [
                    Text(
                      "Rating".tr(),
                      style: AppTextStyles.whit12w700.copyWith(
                        color: Color(0xffFFAC50),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffFFAC50),
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 2.5,
                      ),
                    ),
                    Text("Click To rate".tr(),
                        style: AppTextStyles.white10w400
                            .copyWith(color: Color.fromARGB(255, 44, 36, 36)))
                  ],
                ),
              TextButtonWhiteWidget(
                  width: double.infinity,
                  hight: 32,
                  onPressed: () {
                    log("Rating fs");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RatingOrderPage()));
                  },
                  borderColor: Color(0xffE3E3E3),
                  label: "Rating",
                  appTextStyles: AppTextStyles.white14w400
                      .copyWith(color: Color(0xff666666)))
            ],
          ),
        )
      ],
    );
  }
}
