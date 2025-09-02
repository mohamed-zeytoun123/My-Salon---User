import 'package:my_salon/core/Widgets/gradient_text_widget.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceInfoRowWidget extends StatelessWidget {
  final ServiceInfoModelDUMMY serviceInfo;
  final bool? isDarkPrice;
  const ServiceInfoRowWidget({
    super.key,
    required this.serviceInfo,
    this.isDarkPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 6.w,
      children: [
        Row(
          spacing: 5.w
          ,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: SizedBox(
                width: 67.w,
                height: 46.55086898803711.h,
                child: Image.network(
                  serviceInfo.appImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceInfo.title,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.black16w700
                      .copyWith(color: Color(0xff000000)),
                ),
                Text(
                  "${serviceInfo.hour} hr ${serviceInfo.minute} mins".tr(),
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.white13w400
                      .copyWith(color: Color(0xff818181)),
                ),
              ],
            ),
          ],
        ),
        isDarkPrice == true
            ? Text(
                "\$${serviceInfo.price}",
                style: AppTextStyles.whit20ww700
                    .copyWith(color: Color(0xFF952323)),
              )
            : GradientText(
                text: "\$${serviceInfo.price}",
                style: AppTextStyles.whit20ww700,
              ),
      ],
    );
  }
}
