import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/display_services_and_price_name_widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/services_quantity_selector_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/widget/provider_selector_widget.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesWithSalonWidget extends StatelessWidget {
  const ServicesWithSalonWidget({
    super.key,
    required this.service,
    required this.addedServices,
    required this.index,
  });

  final AddServiceModel service;
  final List<AddServiceModel> addedServices;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        DisplayServicesAndPriceNameWidget(name: "Services name", price: 26),
        ProviderSelectorWidget(providers: DummyData.providerListDUMMY),
        Text(
          "people benefiting from the service".tr(),
          style: AppTextStyles.whit16w400.copyWith(color: Color(0xff979797)),
        ),
        ServicesQuantitySelectorWidget(
          index: index,
          addedServices: addedServices,
          price: service.price,
          onCostChanged: (cost) {
            log("$cost");
          },
        ),
      ],
    );
  }
}
