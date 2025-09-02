import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Cosmetic_Card_widget.dart';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/featchers/All/presentation/pages/near_suppliers_page.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSuppliersPage extends StatelessWidget {
  const TopSuppliersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: HomeCubit(remot: appLocator<HomeRemoteDataSource>())
        ..getTopSalons(),
      child: Scaffold(
        appBar: CustomAppBarWidget(title: "Top Suppliers"),
        backgroundColor: AppColors.colorThird,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            spacing: 10.h
            ,
            children: [
              RowSearchFilterWidget(),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                  if (state.isLoadingTopSalons) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.errorTopSalons != null) {
                    return Center(child: Text(state.errorTopSalons!.message));
                  } else if (state.listTopsSalon == null ||
                      state.listTopsSalon!.isEmpty) {
                    return Center(child: Text("No Data".tr()));
                  } else {
                    return ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: state.listTopsSalon!.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NearSuppliersPage()));
                          },
                          //  context.push(RoutesPath.nearSuppliers);
                          child: CosmeticCardWidget(
                            branch: state.listTopsSalon![index],
                            item: DummyData.cosmeticProvidersListDUMMY[index],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    );
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
