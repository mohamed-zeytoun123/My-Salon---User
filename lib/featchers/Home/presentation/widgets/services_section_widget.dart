import 'package:my_salon/core/Widgets/shimmer%20Slider%20Placeholder/shimmer_slider_placeholder.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:my_salon/featchers/Home/presentation/pages/services_category_page.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Horizontal_Image_Grid_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesSectionWidget extends StatefulWidget {
  const ServicesSectionWidget({
    super.key,
  });
  @override
  @override
  State<ServicesSectionWidget> createState() => _ServicesSectionWidgetState();
}

class _ServicesSectionWidgetState extends State<ServicesSectionWidget> {
  @override
  void initState() {
    context.read<HomeCubit>().getService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeaderWidget(
            title: "Our Services",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ServicesCategoryPage()));
            },
            titleStyle: AppTextStyles.c24w400Meditative
                .copyWith(color: Color(0xff4A172E)),
          ),
          BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
            if (state.isLoadingService) {
              return shimmerSliderPlaceholder();
            }
            if (state.errorService != null) {
              return Center(child: Text(state.errorService!.message));
            }
            if (state.serviceList == null || state.serviceList!.isEmpty) {
              return Center(child: Text("No Services Available".tr()));
            } else {
              return HorizontalImageGridWidget(
                widthForm: double.infinity,
                llistServices: state.serviceList!,
              );
            }
          }),
        ],
      ),
    );
  }
}
