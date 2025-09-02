import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source_impl.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Horizontal_Image_Grid_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesCategoryPage extends StatelessWidget {
  const ServicesCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: HomeRemoteDataSourceImpl(api: API(dio: Dio())))
        ..getService(),
      child: Scaffold(
        backgroundColor: AppColors.colorThird,
        appBar: CustomAppBarWidget(title: "Home"),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 20.h,
              children: [
                RowSearchFilterWidget(),
                BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
                  if (state.isLoadingService) {
                    return CircularProgressIndicator();
                  }
                  if (state.errorService != null) {
                    return Center(child: Text(state.errorService!.message));
                  }
                  if (state.serviceList == null || state.serviceList!.isEmpty) {
                    return const Center(child: Text("No Services Available"));
                  } else {
                    return HorizontalImageGridWidget(
                      heightForm: 667.364013671875,
                      widthForm: 379.15625,
                      heightItem: 121.47280883789062,
                      widthItem: 183.578125,
                      numItem: 2,
                      is6Item: true,
                      llistServices: state.serviceList!,
                    );
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
