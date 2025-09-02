import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Cosmetic_Item_Card_Point_Widget.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Header_Points_Display_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/address_model.dart';
import 'package:my_salon/featchers/Home/data/model/branch_model.dart';
import 'package:my_salon/featchers/Home/data/model/category_model.dart';
import 'package:my_salon/featchers/Home/data/model/city_model.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';
import 'package:my_salon/featchers/Home/data/model/region_model.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:my_salon/featchers/Home/presentation/pages/services_details_page.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:my_salon/featchers/auth/data/model/user_data_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoyaltyPointsPage extends StatelessWidget {
  const LoyaltyPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Loyalty Points"),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20.h,
          children: [
            HeaderPointsDisplayWidget(),
            Text(
              "Loyalty Point".tr(),
              style: AppTextStyles.c24w400Meditative
                  .copyWith(color: Color(0xff383838)),
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ServicesDetailsPage(
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
                                      image: "https://via.placeholder.com/100",
                                      type: "provider",
                                      userableId: 0,
                                      createdAt: DateTime(43),
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
                              ),
                            );
                          }));
                        },
                        child: CosmeticItemCardPointWidget(
                          item: DummyData.pointRewardItemsListDUMMY[index],
                        ));
                  },
                  itemCount: DummyData.pointRewardItemsListDUMMY.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
