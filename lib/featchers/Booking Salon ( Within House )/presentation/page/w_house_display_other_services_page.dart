import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_booking_confirmation_page.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Fixed_Appointment_Card_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_House_Service_Card_With_Add_Button_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHouseDisplayOtherServicesPage extends StatelessWidget {
  const WHouseDisplayOtherServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: AppColors.colorThird,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          spacing: 25.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FixedAppointmentCardWidget(),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select more Services".tr(),
                        style: AppTextStyles.whit16w400.copyWith(
                          color: const Color(0xff979797),
                        ),
                      ),
                       SizedBox(height: 10.h),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.only(bottom: 60.h),
                          itemBuilder: (context, index) {
                            return WHouseServiceCardWithAddButtonWidget(
                              model: DummyData.servicesListDUMMY[index],
                            );
                          },
                          separatorBuilder: (context, index) =>
                               SizedBox(height: 10.h),
                          itemCount: DummyData.servicesListDUMMY.length,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButtonWhiteWidget(
                          width: 160,
                          hight: 55,
                          label: "Continue Shopping",
                          borderColor: const Color(0xffE3E3E3),
                          appTextStyles: AppTextStyles.white13w400
                              .copyWith(color: const Color(0xff57597E)),
                          buttonColor: AppColors.colorThird,
                          onPressed: () async {
                            log("Continue Shopping");
                          },
                        ),
                        TextButtonWhiteWidget(
                          width: 160,
                          hight: 55,
                          label: "Confirm Booking And Pay",
                          borderColor: const Color(0xffE3E3E3),
                          appTextStyles: AppTextStyles.white13w400
                              .copyWith(color: AppColors.colorThird),
                          buttonColor: const Color(0xff3E0C0C),
                          onPressed: () {
                            log("Confirm Booking And Pay");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    WHouseBookingConfirmationPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
