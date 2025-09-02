import 'dart:developer';
import 'package:my_salon/core/Widgets/base/custom_cached_image_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/Upcoming_Appointment_Card_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Home_Services_Providers_Widget.dart';
import 'package:my_salon/core/Widgets/nearest_suppliers_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Offers_And_Image_Slider_Widget.dart';
import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Service_Product_Explore_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services_Section_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Suggested_Products_Widget.dart';
import 'package:my_salon/core/app/manager/app_manager_cubit.dart';
import 'package:my_salon/core/app/manager/app_manager_state.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Top_Suppliers_Widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Location_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Notification_Button_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: AppBar(
        backgroundColor: AppColors.colorThird,
        titleSpacing: 0,
        leadingWidth: 70.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 21.w, right: 10.w),
          child: BlocSelector<AppManagerCubit, AppManagerState, String?>(
            selector: (state) {
              return state.authResponseModel?.user.image;
            },
            builder: (context, state) {
              return CircleAvatar(
                maxRadius: 27.r,
                minRadius: 27.r,
                //  if (state != null )
                child: CustomCachedImage(
                  appImage: state ?? "",
                  height: double.infinity,
                  width: double.infinity,
                ),
              );
            },
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: BlocSelector<AppManagerCubit, AppManagerState, String?>(
              selector: (nameApp) {
            return nameApp.authResponseModel?.user.name;
          },
              //  pre.authResponseModel!.user.name != curr. authResponseModel!.user.name;

              builder: (context, nameApp) {
            final userName = nameApp;
            log("user name  $userName");
            return Text(
              nameApp ?? "User Name".tr(),
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.c28w400Meditative.copyWith(fontSize: 24.sp),
            );
          }),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 100.w, child: LocationWidget()),
                NotificationButtonWidget(),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0.h),
          child: Divider(
            color: Color(0xffD9D9D9),
            thickness: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowSearchFilterWidget(),
              OffersAndImageSliderWidget(),
              UpcomingAppointmentCardWidget(),
              ServicesSectionWidget(),
              ServiceProductExploreWidget(),
              TopSuppliersWidget(title: "Top Salon"),
              NearestSuppliersWidget(),
              HomeServicesProvidersWidget(),
              SuggestedProductsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
