import 'package:my_salon/core/Widgets/Constant%20Widgets/button_constant_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceProductExploreWidget extends StatefulWidget {
  const ServiceProductExploreWidget({
    super.key,
  });

  @override
  State<ServiceProductExploreWidget> createState() =>
      _ServiceProductExploreWidgetState();
}

class _ServiceProductExploreWidgetState
    extends State<ServiceProductExploreWidget> {
  @override
  void initState() {
    context.read<HomeCubit>().getProducts();
    context.read<HomeCubit>().getService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          Text(
            "Explore Services & product".tr(),
            style: AppTextStyles.c24w400Meditative,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
                if (state.isLoadingService) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state.errorService != null) {
                  return Center(child: Text(state.errorService!.message));
                }
                if (state.serviceList == null || state.serviceList!.isEmpty) {
                  return  Center(child: Text("No Services Available".tr()));
                } else {
                  return ButtonConstantWidget.customContainerServices(
                    context,
                    state.serviceList?.length ?? 0,
                  );
                }
              }),
              BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
                if (state.isLoadingProducts) {
                  return CircularProgressIndicator();
                }

                if (state.errorProduct != null) {
                  return Center(child: Text(state.errorProduct!.message));
                }

                if (state.productList == null || state.productList!.isEmpty) {
                  return  Center(child: Text("No Products Available".tr()));
                } else {
                  return ButtonConstantWidget.customContainerProduct(
                    context,
                    state.productList?.length ?? 0,
                  );
                }
              }),
            ],
          )
        ],
      ),
    );
  }
}
