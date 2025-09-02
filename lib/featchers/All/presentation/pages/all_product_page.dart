import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/featchers/All/presentation/widget/All_Product_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: HomeRemoteDataSourceImpl(api: API(dio: Dio()))),
      child: Scaffold(
        appBar: CustomAppBarWidget(title: "All Product"),
        backgroundColor: AppColors.colorThird,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: AllProductWidget(),
        ),
      ),
    );
  }
}
