import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:my_salon/featchers/Product%20Details/presentation/widget/Product_Rating_Percentage_Widget%20.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderProductInfoSectionWidget extends StatelessWidget {
  const ProviderProductInfoSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Product Name Title".tr(),
                style:
                    AppTextStyles.whit20ww700.copyWith(color: Color(0xff000000)),
              ),
              ProductRatingPercentageWidget(rating: 4.3)
            ],
          ),
          Text(
            "\$5.22".tr(),
            style: AppTextStyles.whit20ww700.copyWith(color: Color(0xff3E0C0C)),
          ),
          Column(
            children: [
              Divider(
                color: Color(0xFFD3D3D3),
                thickness: 0.5,
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProviderDetailsWidget(
                    appImage: "https://picsum.photos/124/86?random=35",
                    name: "provider Name",
                    specialty: "provider Specialty",
                  ),
                  TextButtonWhiteWidget(
                    width: 108,
                    hight: 39,
                    buttonColor: const Color.fromARGB(111, 255, 255, 255),
                    onPressed: () {
                      log("onPressed");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProviderProfilePage()));
                    },
                    borderColor: Color(0xffE3E3E3),
                    label: "View Profile",
                    appTextStyles: AppTextStyles.white13w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                ],
              ),
              Divider(
                color: Color(0xFFD3D3D3),
                thickness: 0.5,
                height: 5.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
