import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/All/presentation/pages/Near_Suppliers_Page.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/freelancer_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeServicesProvidersWidget extends StatelessWidget {
  const HomeServicesProvidersWidget({
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
              title: "home services providers",
              onTap: () {
                log("home services providers");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NearSuppliersPage()));
              },
              titleStyle: AppTextStyles.c24w400Meditative
                  .copyWith(color: Color(0xff43152A))),
        ),
        SizedBox(
          width: double.infinity,
          height: 183.h,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FreelancerCardWidget(
                  freelancer: DummyData.freelancersDUMMY[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount: DummyData.freelancersDUMMY.length),
        ),
      ],
    );
  }
}
