import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class OTPInputWidget extends StatefulWidget {
  const OTPInputWidget({super.key});

  @override
  OTPInputWidgetState createState() => OTPInputWidgetState();
}

class OTPInputWidgetState extends State<OTPInputWidget> {
  List<bool> isFilled = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Container(
              width: 56.w,
              height: 56.h,
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                color: isFilled[index] ? Color(0xffF1F1F1) : Colors.white,
                border: Border.all(color: Color(0xff979797), width: 2.w),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                style: AppTextStyles.bfx16w200SFProDisplayHeavy,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  counterText: "",
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    isFilled[index] = value.isNotEmpty;
                  });

                  if (value.isNotEmpty) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
