import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/location_map_preview_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Provider_Location_Details_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderAddressSectionWidget extends StatelessWidget {
  const ProviderAddressSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        spacing: 10.h , 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Address".tr(),
            style: AppTextStyles.white14w700.copyWith(color: Color(0xff000000)),
          ),
          LocationMapPreviewWidget(
            width: 300,
            hight: 100,
          ),
          ProviderLocationDetailsWidget()
        ],
      ),
    );
  }
}
