import 'dart:developer';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_booking_an_appointment_product_page.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHouseAddProductWidget extends StatelessWidget {
  const WHouseAddProductWidget({super.key, required this.model});

  final ServiceInfoModelDUMMY model;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: () {
          log("Add button pressed for: ${model.title}");
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WHouseBookingAnAppointmentProductPage(
                  service: AddServiceModel(title: "Haircut", price: 50.0),
                  index: 0,
                  addedServices: [
                    AddServiceModel(title: "Haircut", price: 50.0),
                    AddServiceModel(title: "Massage", price: 70.0),
                  ],
                ),
              ));
        },
        child: Ink(
          height: 32.h,
          width: 90.w,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE3E3E3)),
            color: const Color(0xff3E0C0C),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            spacing: 5.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                size: 15.sp,
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Add".tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
