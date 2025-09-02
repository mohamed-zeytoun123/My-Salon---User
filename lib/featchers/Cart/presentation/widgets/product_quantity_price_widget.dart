import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Product_Quantity_Selector_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductQuantityPriceWidget extends StatelessWidget {
  const ProductQuantityPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
      child: Column(
        spacing: 10.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name Title".tr(),
                style:
                    AppTextStyles.whit20ww700.copyWith(color: Color(0xff000000)),
              ),
              Column(
                children: [
                  Text(
                      overflow: TextOverflow.ellipsis,
                      "23.3\$".tr(),
                      style: AppTextStyles.whit24w700.copyWith(
                        color: Color(0xff383838),
                      )),
                  Text(
                      overflow: TextOverflow.ellipsis,
                      "23.4\$".tr(),
                      style: AppTextStyles.white14w400.copyWith(
                        color: Color(0xffF50B5F),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xffF50B5F),
                        decorationStyle: TextDecorationStyle.solid,
                      )),
                ],
              ),
            ],
          ),
          ProductQuantitySelectorWidget()
        ],
      ),
    );
  }
}
