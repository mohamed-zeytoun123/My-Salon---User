import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Content_Card_Details_Provider_Service_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDetailsProviderServiceWidget extends StatelessWidget {
  const CardDetailsProviderServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 110.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE3E3E3),
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.colorThird,
      ),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Row(
        spacing: 10.w,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.5.r,
            backgroundImage: NetworkImage(
              "https://picsum.photos/124/86?random=165",
            ),
          ),
          ContentCardDetailsProviderServiceWidget()
        ],
      ),
    );
  }
}
