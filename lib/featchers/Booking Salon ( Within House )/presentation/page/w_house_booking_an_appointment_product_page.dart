import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Invoice_Details_Page.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Fixed_Appointment_Card_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Services_With_Salon_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHouseBookingAnAppointmentProductPage extends StatefulWidget {
  const WHouseBookingAnAppointmentProductPage({
    super.key,
    required this.service,
    required this.addedServices,
    required this.index,
  });

  final AddServiceModel service;
  final List<AddServiceModel> addedServices;
  final int index;

  @override
  State<WHouseBookingAnAppointmentProductPage> createState() =>
      _WHouseBookingAnAppointmentProductPageState();
}

class _WHouseBookingAnAppointmentProductPageState
    extends State<WHouseBookingAnAppointmentProductPage> {
  TextEditingController textNotificationcontroller = TextEditingController();
  @override
  void dispose() {
    textNotificationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: AppColors.colorThird,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FixedAppointmentCardWidget(),
              ...List.generate(
                3,
                (i) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: ServicesWithSalonWidget(
                    service: widget.service,
                    addedServices: [
                      AddServiceModel(title: "Services name", price: 26),
                      AddServiceModel(title: "Services name", price: 26),
                      AddServiceModel(title: "Services name", price: 26),
                    ],
                    index: 0,
                  ),
                ),
              ),
              Text(
                "Add your Nots".tr(),
                style:
                    AppTextStyles.whit20w400.copyWith(color: Color(0xff383838)),
              ),
              InputDottedTextfieldWidget(
                hintText: "add your notifications",
                controller: textNotificationcontroller,
                height: 107,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButtonWhiteWidget(
                      width: 160,
                      hight: 55,
                      label: "Continue Shopping",
                      borderColor: Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white13w400.copyWith(
                        color: Color(0xff57597E),
                      ),
                      buttonColor: AppColors.colorThird,
                      onPressed: () {
                        log("Continue Shopping");
                      },
                    ),
                    TextButtonWhiteWidget(
                      width: 160,
                      hight: 55,
                      label: "Confirm Booking And Pay",
                      borderColor: Color(0xffE3E3E3),
                      appTextStyles: AppTextStyles.white13w400.copyWith(
                        color: AppColors.colorThird,
                      ),
                      buttonColor: Color(0xff3E0C0C),
                      onPressed: () {
                        log("Confirm Booking And Pay");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WHouseInvoiceDetailsPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
