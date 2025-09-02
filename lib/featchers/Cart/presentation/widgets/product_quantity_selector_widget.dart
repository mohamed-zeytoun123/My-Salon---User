import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductQuantitySelectorWidget extends StatefulWidget {
  const ProductQuantitySelectorWidget({super.key});

  @override
  State<ProductQuantitySelectorWidget> createState() =>
      _ProductQuantitySelectorWidgetState();
}

class _ProductQuantitySelectorWidgetState
    extends State<ProductQuantitySelectorWidget> {
  int _number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 40.w,
      children: [
        Container(
          width: 205.w,
          height: 31.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r
              ),
              color: AppColors.colorThird,
              border: Border.all(
                color: Color(0xffE3E3E3),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 13.r,
                backgroundColor: Color(0xffD9D9D9),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _number++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Color(0xff3E0C0C),
                    size: 20.sp,
                  ),
                  padding: EdgeInsets.zero,
                  splashRadius: 24.r,
                ),
              ),
              Text(
                "$_number".tr(),
                style: AppTextStyles.whit20ww700.copyWith(
                  color: Color(0xff666666),
                ),
              ),
              CircleAvatar(
                radius: 13.r,
                backgroundColor: Color(0xffD9D9D9),
                child: IconButton(
                  onPressed: () {
                    if (_number > 1) {
                      setState(() {
                        _number--;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Color(0xff3E0C0C),
                    size: 20.sp,
                  ),
                  padding: EdgeInsets.zero,
                  splashRadius: 24.r,
                ),
              ),
            ],
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() {
                _number = 0;
              });
            },
            borderRadius: BorderRadius.circular(30.r),
            child: Icon(
              size: 35.sp,
              Icons.delete_forever_sharp,
              color: Color(0xffF62973),
            ),
          ),
        )
      ],
    );
  }
}
