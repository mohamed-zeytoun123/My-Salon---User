import 'dart:developer';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/booking_an_appointment_freelance_product_page.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductWidget extends StatefulWidget {
  const AddProductWidget(
      {super.key, required this.model, required this.isFreelance});
  final ServiceInfoModelDUMMY model;
  final bool isFreelance;

  @override
  AddProductWidgetState createState() => AddProductWidgetState();
}

class AddProductWidgetState extends State<AddProductWidget> {
  List<AddServiceModel> addedServices = GlobalCartData.addedServicesDUMMY;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: () async {
          setState(() {
            final index = addedServices
                .indexWhere((service) => service.title == widget.model.title);

            if (index != -1) {
              addedServices[index].number += 1;
            } else {
              addedServices.add(AddServiceModel(
                price: widget.model.price,
                title: widget.model.title,
              ));
            }
          });

          log("Added: ${widget.model.title}");

          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingAnAppointmentFreelanceProductPage(
                addedServices: addedServices,
              ),
            ),
          );

          if (result != null && result is List<AddServiceModel>) {
            setState(() {
              addedServices = result;
            });
          }
        },
        child: Ink(
          height: 32.h,
          width: 90.w,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE3E3E3)),
            color: widget.isFreelance ? const Color(0xff3E0C0C) : null,
            gradient: widget.isFreelance ? null : AppColors.colorMain,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                size: 15.sp,
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Add".tr(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
