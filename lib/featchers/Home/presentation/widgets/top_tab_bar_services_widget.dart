import 'package:my_salon/core/Error/failure.dart';
import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:my_salon/featchers/Home/presentation/pages/services_details_page.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/cosmetic_item_service_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopTabBarServicesWidget extends StatefulWidget {
  final bool isRowSearchTop;

  const TopTabBarServicesWidget({
    super.key,
    this.isRowSearchTop = false,
  });

  @override
  TopTabBarServicesWidgetState createState() => TopTabBarServicesWidgetState();
}

class TopTabBarServicesWidgetState extends State<TopTabBarServicesWidget> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    final cubit = context.read<HomeCubit>();
    if (_selectedIndex == 0) {
      cubit.getServicesFetchAll();
    } else if (_selectedIndex == 1) {
      cubit.getServicesFetchSalon();
    } else {
      cubit.getServicesFetchFreelance();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.isRowSearchTop)
           Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: RowSearchFilterWidget(),
          ),
        Container(
          padding:  EdgeInsets.symmetric(vertical: 10.h),
          color: const Color(0xffFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabButton("All", 0),
              tabButton("Salon", 1),
              tabButton("Freelance", 2),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              if (!widget.isRowSearchTop) const RowSearchFilterWidget(),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    late final bool isLoading;
                    late final Failure? error;
                    late final List<ServiceModel>? dataList;

                    if (_selectedIndex == 0) {
                      isLoading = state.isLoadingServicesFetchAll;
                      error = state.errorServiceFetchAll;
                      dataList = state.serviceFetchAllList;
                    } else if (_selectedIndex == 1) {
                      isLoading = state.isLoadingServicesFetchSalon;
                      error = state.errorServiceFetchSalon;
                      dataList = state.serviceFetchSalonList;
                    } else {
                      isLoading = state.isLoadingServicesFetchFreelance;
                      error = state.errorServiceFetchFreelance;
                      dataList = state.serviceFetchFreelanceList;
                    }

                    if (isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (error != null) {
                      return Center(child: Text(error.message));
                    } else if (dataList == null || dataList.isEmpty) {
                      return  Center(child: Text("No Data".tr()));
                    }

                    return GridView.builder(
                      padding:  EdgeInsets.all(10.r),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServicesDetailsPage(
                                  model: dataList![index],
                                ),
                              ),
                            );
                          },
                          child: CosmeticItemServiceCardWidget(
                            item: DummyData.cosmeticItemsListDUMMY[index %
                                DummyData.cosmeticItemsListDUMMY.length],
                            model: dataList![index],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget tabButton(String label, int index) {
    final bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        // _fetchData(); // 🔁 Fetch data when tab changes
      },
      child: Container(
        width: 100.w,
        height: 42.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xffA64D79), Color(0xffE195AB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isSelected ? null : const Color(0xffEFEFFB),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Text(
          label.tr(),
          style: TextStyle(
            color:
                isSelected ? const Color(0xffFFFFFF) : const Color(0xff57597E),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
