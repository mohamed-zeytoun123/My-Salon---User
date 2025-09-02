import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToggleStateBuyWidget extends StatefulWidget {
  const CustomToggleStateBuyWidget({super.key});

  @override
  CustomToggleStateBuyWidgetState createState() =>
      CustomToggleStateBuyWidgetState();
}

class CustomToggleStateBuyWidgetState
    extends State<CustomToggleStateBuyWidget> {
  bool isSelected = false; //! الحالة الافتراضية
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = true; //! تبديل الحالة عند الضغط
        });
      },
      child: Container(
        width: 170.5.w,
        height: 32.h,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.colorSecondary : Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: const Color(0xFFE3E3E3)),
        ),
        child: isSelected
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Color(0xffD9D9D9),
                    ),
                    padding: EdgeInsets.all(4.r),
                  ),
                  Text(
                    "$number",
                    style: AppTextStyles.white14w700
                        .copyWith(color: AppColors.colorThird),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (number == 1) {
                          setState(() {
                            isSelected = false;
                          });
                        } else {
                          number--;
                        }
                      });
                    },
                    icon: Icon(Icons.remove_circle, color: Color(0xffD9D9D9)),
                    padding: EdgeInsets.all(4.r),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Add To Cart".tr(),
                    style: AppTextStyles.white14w700
                        .copyWith(color: AppColors.colorSecondary),
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: AppColors.colorSecondary,
                  )
                ],
              ),
      ),
    );
  }
}
