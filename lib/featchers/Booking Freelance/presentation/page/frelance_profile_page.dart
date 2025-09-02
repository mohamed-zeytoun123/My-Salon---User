import 'package:my_salon/core/assets/app_image.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Provider_Header_Section_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Provider_Info_Hader_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Freelance_Services_Product_Review_Tabs_Widget.dart';
import 'package:my_salon/featchers/Product%20Details/presentation/widget/Product_Rating_Percentage_Widget%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FrelanceProfilePage extends StatelessWidget {
  const FrelanceProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      body: Stack(
        children: [
          const ProviderHeaderSectionWidget(isFreelance: true),
          ProviderInfoHaderWidget(isFreelance: true),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 100.h,
                left: 0.w
                ,
                right: 0.w,
                child: Center(
                  child: Container(
                    width: 107.w,
                    height: 107.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 82, 24, 47),
                        width: 3.w
                        ,
                      ),
                      image: DecorationImage(
                        image: AssetImage(AppImage.girl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 200.h,
                left: 0.w,
                right: 0.w,
                child: Center(
                  child: ProductRatingPercentageWidget(
                    rating: 2.3,
                    colorform: Color.fromARGB(242, 185, 79, 114),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 310.h),
            child: FreelanceServicesProductReviewTabsWidget(),
          )
        ],
      ),
    );
  }
}
