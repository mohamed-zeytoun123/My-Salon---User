import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestedProductsWidget extends StatelessWidget {
  const SuggestedProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: CustomHeaderWidget(
              title: "Suggested products",
              titleStyle: AppTextStyles.c24w400Meditative
                  .copyWith(color: Color(0xff4A172E))),
        ),
        SizedBox(
          height: 218.h,
          width: double.infinity,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductCardWidget(
                  product: DummyData.productsDUMMY[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount: DummyData.productsDUMMY.length),
        ),
      ],
    );
  }
}
