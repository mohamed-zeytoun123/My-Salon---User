// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/area_content_widget.dart';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/city_content_widget.dart';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/rating_content_widget.dart';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/salon_dropdown_widget.dart';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/services_content_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterOptionsWidget extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FilterOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SalonDropdownWidget(),
          ServicesContentWidget(),
          RatingContentWidget(),
          CityContentWidget(),
          AreaContentWidget(),
          SizedBox(height: 20.h),
          Center(
            child: TextButtonColorMainWidget(
              width: 343,
              hight: 56,
              label: "Apply filter",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  log("Filters Applied!");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
