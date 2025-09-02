import 'dart:developer';
import 'package:my_salon/core/Widgets/shimmer%20Slider%20Placeholder/shimmer_slider_placeholder.dart';
import 'package:my_salon/featchers/All/presentation/pages/top_suppliers_page.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Cosmetic_Card_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Custom_header_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSuppliersWidget extends StatefulWidget {
  final String title;
  const TopSuppliersWidget({
    super.key,
    required this.title,
  });

  @override
  State<TopSuppliersWidget> createState() => _TopSuppliersWidgetState();
}

class _TopSuppliersWidgetState extends State<TopSuppliersWidget> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getTopSalons();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: CustomHeaderWidget(
              title: widget.title,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TopSuppliersPage()));
                log("top salon");
              },
              titleStyle: AppTextStyles.white24w400Meditative
                  .copyWith(color: Color(0xff43152A))),
        ),
        SizedBox(
          height: 220.h,
          width: double.infinity,
          child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
            if (state.isLoadingTopSalons) {
              return Center(
                child: shimmerSliderPlaceholder(),
              );
            } else if (state.errorTopSalons != null) {
              return Center(child: Text(state.errorTopSalons!.message));
            } else if (state.listTopsSalon == null ||
                state.listTopsSalon!.isEmpty) {
              return Center(child: Text("No Data".tr()));
            } else {
              return ListView.separated(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                scrollDirection: Axis.horizontal,
                itemCount: state.listTopsSalon!.length,
                itemBuilder: (context, index) {
                  return CosmeticCardWidget(
                    item: DummyData.cosmeticProvidersListDUMMY[index],
                    branch: state.listTopsSalon![index],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 13.w),
              );
            }
          }),
        ),
      ],
    );
  }
}
