import 'dart:developer';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:my_salon/featchers/Profile/data/model/order_pending_model_dummy.dart';
import 'package:my_salon/featchers/Profile/presentation/pages/Cancel_Order_Page.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/form_order_widget.dart';
import 'package:flutter/material.dart';

class OrderPendingWidget extends StatelessWidget {
  final OrderPendingModelDUMMY model;
  const OrderPendingWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return FormOrderWidget(
      orderId: model.orderId,
      isGuest: model.isGuest,
      date: BookingDate(
          day: model.date.day, month: model.date.month, year: model.date.year),
      price: model.price,
      providerAppImage: model.providerAppImage,
      providerName: model.providerName,
      providerSpecialty: model.providerSpecialty,
      additionalWidgets: [
        Padding(
          padding:  EdgeInsets.only(top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButtonWhiteWidget(
                width: 130,
                hight: 32,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CancelOrderPage()));
                },
                label: "Cancel",
                appTextStyles: AppTextStyles.white14w400
                    .copyWith(color: AppColors.colorSecondary),
                borderColor: AppColors.colorSecondary,
              ),
              TextButtonWhiteWidget(
                width: 130,
                hight: 32,
                onPressed: () {
                  log("View Order");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AllAppointmentProcessingPage()));
                },
                label: "View Order",
                buttonColor: const Color.fromARGB(111, 255, 255, 255),
                appTextStyles:
                    AppTextStyles.white14w400.copyWith(color: Color(0xff666666)),
                borderColor: Color(0xffE3E3E3),
              )
            ],
          ),
        )
      ],
    );
  }
}
