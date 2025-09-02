import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/display_services_and_price_name_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/Selectable_Button_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_Provider_Info_Tile_Widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/W_House_Time_Date_Notes_Section_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WHouseBookingAnAppointmentPage extends StatefulWidget {
  const WHouseBookingAnAppointmentPage({super.key});

  @override
  State<WHouseBookingAnAppointmentPage> createState() =>
      _WHouseBookingAnAppointmentPageState();
}

class _WHouseBookingAnAppointmentPageState
    extends State<WHouseBookingAnAppointmentPage> {
  Option option = Option.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: AppColors.colorThird,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WProviderInfoTileWidget(),
              SelectableButtonWidget(
                isEnabled: true,
                onOptionSelected: (Option value) {
                  setState(() {
                    option = value;
                  });
                  log(value.name);
                },
              ),
              DisplayServicesAndPriceNameWidget(
                name: "Services Name",
                price: 26,
              ),
              WHouseTimeDateNotesSectionWidget(option1: option)
            ],
          ),
        ),
      ),
    );
  }
}
