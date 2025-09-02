// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/provider_show_image_name_dis_widget.dart';
import 'package:my_salon/featchers/Booking%20Salon%20(%20Within%20House%20)/data/model/provider_model_dummy.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderSelectorWidget extends StatefulWidget {
  final List<ProviderModelDUMMY> providers;
  final bool isEnabled;

  const ProviderSelectorWidget({
    super.key,
    required this.providers,
    this.isEnabled = true,
  });

  @override
  ProviderSelectorWidgetState createState() => ProviderSelectorWidgetState();
}

class ProviderSelectorWidgetState extends State<ProviderSelectorWidget> {
  ProviderModelDUMMY? selectedProvider;

  List<DropdownMenuItem<ProviderModelDUMMY>> buildProviderItems() {
    return [
      for (var provider in widget.providers)
        DropdownMenuItem<ProviderModelDUMMY>(
          value: provider,
          child: Stack(
            children: [
              ProviderShowImageNameDisWidget(
                isShowDivider: true,
                image: provider.image,
                name: provider.name,
                discription: provider.description,
              ),
              if (provider.isUnavailable)
                Positioned.fill(
                  child: Container(
                    width: double.infinity,
                    color: Color(0xffE3E3E3).withOpacity(0.5),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(bottom: 7.h),
                    padding: EdgeInsets.only(right: 8.w),
                    child: Text("Unavailable".tr(),
                        style: AppTextStyles.whit16w400
                            .copyWith(color: Color(0xff952323))),
                  ),
                ),
            ],
          ),
        ),
    ];
  }

  List<Widget> buildSelectedItems() {
    return [
      for (var provider in widget.providers)
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            provider.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            ),
          ),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Row(
          children: [
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<ProviderModelDUMMY>(
                  isExpanded: true,
                  value: selectedProvider,
                  hint: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
                    child: Text(
                      'Choose technique'.tr(),
                      style: AppTextStyles.white13w400
                          .copyWith(color: const Color(0xffC8C8C8)),
                    ),
                  ),
                  icon: Container(
                    width: 55.w,
                    height: double.infinity,
                    color: Colors.grey[200],
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                      size: 28.sp,
                    ),
                  ),
                  items: buildProviderItems(),
                  selectedItemBuilder: (context) => [
                    for (var provider in widget.providers)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 2.h),
                          child: Text(
                            provider.name,
                            overflow: TextOverflow.ellipsis,
                            style:  TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                  ],
                  onChanged: widget.isEnabled
                      ? (provider) {
                          if (provider != null && !provider.isUnavailable) {
                            setState(() {
                              selectedProvider = provider;
                              log(provider.name);
                            });
                          }
                        }
                      : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
