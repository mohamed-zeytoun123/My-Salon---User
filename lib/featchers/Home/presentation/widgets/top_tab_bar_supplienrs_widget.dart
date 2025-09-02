import 'package:my_salon/core/Error/failure.dart';
import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/featchers/Home/data/model/address_model.dart';
import 'package:my_salon/featchers/Home/data/model/branch_model.dart';
import 'package:my_salon/featchers/Home/data/model/category_model.dart';
import 'package:my_salon/featchers/Home/data/model/city_model.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/data/model/nearest_model.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';
import 'package:my_salon/featchers/Home/data/model/region_model.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:my_salon/featchers/Home/presentation/pages/services_details_page.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Cosmetic_Item_Card_nearest_widget.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:my_salon/featchers/auth/data/model/user_data_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopTabBarSupplienrsWidget extends StatefulWidget {
  final bool isRowSearchTop;

  const TopTabBarSupplienrsWidget({
    super.key,
    this.isRowSearchTop = false,
  });

  @override
  TopTabBarSupplienrsWidgetState createState() =>
      TopTabBarSupplienrsWidgetState();
}

class TopTabBarSupplienrsWidgetState extends State<TopTabBarSupplienrsWidget> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    final cubit = context.read<HomeCubit>();
    if (_selectedIndex == 0) {
      cubit.getnearSuppliersfetchAll();
    } else if (_selectedIndex == 1) {
      cubit.getnearSuppliersfetchSalon();
    } else {
      cubit.getnearSuppliersfetchFreelance();
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
          padding: EdgeInsets.symmetric(vertical: 10.h),
          color: const Color(0xffFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabButton("All", 0),
              tabButton("Salon", 1),
              tabButton("Providers", 2),
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
                    late final List<NearestModel>? dataList;

                    if (_selectedIndex == 0) {
                      isLoading = state.isLoadingnearSuppliersfetchAll;
                      error = state.errornearSuppliersfetchAll;
                      dataList = state.nearSuppliersfetchAllList;
                    } else if (_selectedIndex == 1) {
                      isLoading = state.isLoadingnearSuppliersfetchSalon;
                      error = state.errornearSuppliersfetchSalon;
                      dataList = state.nearSuppliersfetchSalonList;
                    } else {
                      isLoading = state.isLoadingnearSuppliersfetchFreelance;
                      error = state.errornearSuppliersfetchFreelance;
                      dataList = state.nearSuppliersfetchFreelanceList;
                    }

                    if (isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (error != null) {
                      return Center(child: Text(error.message));
                    } else if (dataList == null || dataList.isEmpty) {
                      return Center(child: Text("No Data".tr()));
                    }

                    return GridView.builder(
                      padding: EdgeInsets.all(10.r),
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
                                    model: ServiceModel(
                                  id: 0,
                                  isFavourite: false,
                                  price: 100,
                                  duration: 30,
                                  categoryId: 1,
                                  type: 1,
                                  createdAt: DateTime.now(),
                                  deliveryFee: 0,
                                  homeServiceFee: 10,
                                  newPrice: 80,
                                  name: "Default Service",
                                  image: "https://via.placeholder.com/150",
                                  description: "Default service description.",
                                  branch: BranchModel(
                                    id: 0,
                                    providerId: 0,
                                    createdAt: DateTime.now(),
                                    managerName: "Default Manager",
                                    isOpen: 1,
                                    phone: "0000000000",
                                    name: "Default Branch",
                                    distance: 0.0,
                                    productsCount: 0,
                                    image: "https://via.placeholder.com/150",
                                    coverImage:
                                        "https://via.placeholder.com/300x100",
                                    gallery: [],
                                    address: AddressModel(
                                      id: 0,
                                      address: "Default Address",
                                      lat: 0.0,
                                      lng: 0.0,
                                      regionId: 0,
                                      createdAt: DateTime.now(),
                                      region: RegionModel(
                                        id: 0,
                                        cityId: 0,
                                        createdAt: DateTime.now(),
                                        name: "Default Region",
                                        city: CityModel(
                                          id: 0,
                                          createdAt: DateTime.now(),
                                          name: "Default City",
                                        ),
                                      ),
                                    ),
                                    provider: ProviderModel(
                                      id: 0,
                                      showInHome: 1,
                                      type: 1,
                                      createdAt: DateTime.now(),
                                      subscriptionId: null,
                                      order: 0,
                                      currencyPerPoint: null,
                                      pointValue: null,
                                      name: "Default Provider",
                                      bio: "Default provider bio",
                                      address: "Provider Address",
                                      categories: [
                                        CategoryModel(
                                          id: 0,
                                          status: 1,
                                          type: "service",
                                          createdAt: DateTime.now(),
                                          name: "Default Category",
                                          image:
                                              "https://via.placeholder.com/100",
                                        )
                                      ],
                                      supportLoyaltyPoints: 0,
                                      user: UserDataModel(
                                        id: 0,
                                        name: "Default User",
                                        email: "default@example.com",
                                        phone: "0000000000",
                                        gender: GenderEnum.female,
                                        active: 1,
                                        image:
                                            "https://via.placeholder.com/100",
                                        type: "provider",
                                        userableId: 0,
                                        createdAt: DateTime(4),
                                      ),
                                    ),
                                  ),
                                  category: CategoryModel(
                                    id: 0,
                                    status: 1,
                                    type: "service",
                                    createdAt: DateTime.now(),
                                    name: "Default Category",
                                    image: "https://via.placeholder.com/100",
                                  ),
                                )),
                              ),
                            );
                          },
                          child: CosmeticItemNearestCardWidget(
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
        _fetchData();
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
          borderRadius: BorderRadius.circular(15),
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
