import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaticPriceDeliveryWidget extends StatelessWidget {
  const StaticPriceDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5.w,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery price".tr(),
                    style: AppTextStyles.whit16w700.copyWith(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "\$3".tr(),
                    style: AppTextStyles.whit16w700.copyWith(
                      color: const Color(0xff434343),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tax".tr(),
                      style: AppTextStyles.white14w600.copyWith(
                        color: Color(0xff434343),
                        fontWeight: FontWeight.w800,
                      )),
                  Text("\$1.3".tr(),
                      style: AppTextStyles.white14w700.copyWith(
                        color: Color(0xff434343),
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ],
          ),
        ),
        const Divider(color: Color.fromARGB(44, 102, 102, 102)),
        Padding(
          padding:  EdgeInsets.only(right: 20.w, top: 10.h, bottom: 10.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Total".tr(),
                style: AppTextStyles.whit16w700.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff1E1918),
                )),
            Text("\$39.9".tr(),
                style: AppTextStyles.whit16w700.copyWith(
                  color: Color(0xff434343),
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                )),
          ]),
        ),
      ],
    );
  }
}
