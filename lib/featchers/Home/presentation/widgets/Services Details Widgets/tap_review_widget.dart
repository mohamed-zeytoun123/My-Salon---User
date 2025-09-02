import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/rating_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TapReviewWidget extends StatelessWidget {
  final List<RateProductDetailsModelDUMMY> listRate;

  const TapReviewWidget({
    super.key,
    required this.listRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${listRate.length} Review".tr(),
              style: AppTextStyles.whit20ww700
                  .copyWith(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Expanded(
                child: ListView.separated(
              padding: EdgeInsets.only(bottom: 80.h),
              scrollDirection: Axis.vertical,
              itemCount: listRate.length,
              itemBuilder: (context, index) {
                return RatingCardWidget(model: listRate[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10.h),
            )),
          ],
        ));
  }
}
