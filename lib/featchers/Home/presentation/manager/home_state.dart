import 'package:my_salon/core/model/slider_model.dart';
import 'package:my_salon/featchers/Home/data/model/Product_model.dart';
import 'package:my_salon/featchers/Home/data/model/nearest_model.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';

import 'package:my_salon/core/Error/failure.dart';
import 'package:my_salon/featchers/Home/data/model/branch_model.dart';

class HomeState  {
  //!_____________getTopSalon________________________________________________________
  final List<BranchModel>? listTopsSalon;
  final bool isLoadingTopSalons;
  final Failure? errorTopSalons;

  //!_____________getNearest________________________________________________________
  final List<NearestModel>? listNearest;
  final bool isLoadingNearest;
  final Failure? errorNearest;
  //!_____________nearSuppliers fetch All________________________________________________________
  final List<NearestModel>? nearSuppliersfetchAllList;
  final bool isLoadingnearSuppliersfetchAll;
  final Failure? errornearSuppliersfetchAll;
  //!_____________nearSuppliers fetch Salon________________________________________________________
  final List<NearestModel>? nearSuppliersfetchSalonList;
  final bool isLoadingnearSuppliersfetchSalon;
  final Failure? errornearSuppliersfetchSalon;
  //!_____________nearSuppliers fetch Freelance________________________________________________________
  final List<NearestModel>? nearSuppliersfetchFreelanceList;
  final bool isLoadingnearSuppliersfetchFreelance;
  final Failure? errornearSuppliersfetchFreelance;
  //!_____________get Sliders________________________________________________________
  final List<SliderModel>? slidersList;
  final bool isLoadingSliders;
  final Failure? errorSliders;
  //!_____________get Products________________________________________________________
  final List<ProductModel>? productList;
  final bool isLoadingProducts;
  final Failure? errorProduct;
  //!_____________get Service________________________________________________________
  final List<ServiceModel>? serviceList;
  final bool isLoadingService;
  final Failure? errorService;
  //!_____________getnear Services fetch All________________________________________________________
  final List<ServiceModel>? serviceFetchAllList;
  final bool isLoadingServicesFetchAll;
  final Failure? errorServiceFetchAll;

  //!_____________getnear Services fetch Freelance ________________________________________________________
  final List<ServiceModel>? serviceFetchFreelanceList;
  final bool isLoadingServicesFetchFreelance;
  final Failure? errorServiceFetchFreelance;

  //!_____________getnear Services fetch Salon ________________________________________________________
  final List<ServiceModel>? serviceFetchSalonList;
  final bool isLoadingServicesFetchSalon;
  final Failure? errorServiceFetchSalon;

  //!_____________getNearest________________________________________________________
   
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_________________________________________________________________________________
  const HomeState({
    this.listTopsSalon,
    this.isLoadingTopSalons = false,
    this.errorTopSalons,
    this.listNearest,
    this.isLoadingNearest = false,
    this.errorNearest,
    this.nearSuppliersfetchAllList,
    this.isLoadingnearSuppliersfetchAll = false,
    this.errornearSuppliersfetchAll,
    this.nearSuppliersfetchSalonList,
    this.isLoadingnearSuppliersfetchSalon = false,
    this.errornearSuppliersfetchSalon,
    this.nearSuppliersfetchFreelanceList,
    this.isLoadingnearSuppliersfetchFreelance = false,
    this.errornearSuppliersfetchFreelance,
    this.slidersList,
    this.isLoadingSliders = false,
    this.errorSliders,
    this.productList,
    this.isLoadingProducts = false,
    this.errorProduct,
    this.serviceList,
    this.isLoadingService = false,
    this.errorService,
    this.serviceFetchAllList,
    this.isLoadingServicesFetchAll = false,
    this.errorServiceFetchAll,
    this.serviceFetchFreelanceList,
    this.isLoadingServicesFetchFreelance = false,
    this.errorServiceFetchFreelance,
    this.serviceFetchSalonList,
    this.isLoadingServicesFetchSalon = false,
    this.errorServiceFetchSalon,
  });

  HomeState copyWith({
    List<BranchModel>? listTopsSalon,
    bool? isLoadingTopSalons,
    Failure? errorTopSalons,
    List<NearestModel>? listNearest,
    bool? isLoadingNearest,
    Failure? errorNearest,
    List<NearestModel>? nearSuppliersfetchAllList,
    bool? isLoadingnearSuppliersfetchAll,
    Failure? errornearSuppliersfetchAll,
    List<NearestModel>? nearSuppliersfetchSalonList,
    bool? isLoadingnearSuppliersfetchSalon,
    Failure? errornearSuppliersfetchSalon,
    List<NearestModel>? nearSuppliersfetchFreelanceList,
    bool? isLoadingnearSuppliersfetchFreelance,
    Failure? errornearSuppliersfetchFreelance,
    List<SliderModel>? slidersList,
    bool? isLoadingSliders,
    Failure? errorSliders,
    List<ProductModel>? productList,
    bool? isLoadingProducts,
    Failure? errorProduct,
    List<ServiceModel>? serviceList,
    bool? isLoadingService,
    Failure? errorService,
    List<ServiceModel>? serviceFetchAll,
    bool? isLoadingFetchAll,
    Failure? errorServiceFetchAll,
    List<ServiceModel>? serviceFetchFreelance,
    bool? isLoadingFetchFreelance,
    Failure? errorServiceFetchFreelance,
    List<ServiceModel>? serviceFetchSalon,
    bool? isLoadingFetchSalon,
    Failure? errorServiceFetchSalon,
  }) {
    return HomeState(
      
      listTopsSalon: listTopsSalon ?? this.listTopsSalon,
      isLoadingTopSalons: isLoadingTopSalons ?? this.isLoadingTopSalons,
      errorTopSalons: errorTopSalons ?? this.errorTopSalons,
      listNearest: listNearest ?? this.listNearest,
      isLoadingNearest: isLoadingNearest ?? this.isLoadingNearest,
      errorNearest: errorNearest ?? this.errorNearest,
      nearSuppliersfetchAllList:
          nearSuppliersfetchAllList ?? this.nearSuppliersfetchAllList,
      isLoadingnearSuppliersfetchAll:
          isLoadingnearSuppliersfetchAll ?? this.isLoadingnearSuppliersfetchAll,
      errornearSuppliersfetchAll:
          errornearSuppliersfetchAll ?? this.errornearSuppliersfetchAll,
      nearSuppliersfetchSalonList:
          nearSuppliersfetchSalonList ?? this.nearSuppliersfetchSalonList,
      isLoadingnearSuppliersfetchSalon: isLoadingnearSuppliersfetchSalon ??
          this.isLoadingnearSuppliersfetchSalon,
      errornearSuppliersfetchSalon:
          errornearSuppliersfetchSalon ?? this.errornearSuppliersfetchSalon,
      nearSuppliersfetchFreelanceList: nearSuppliersfetchFreelanceList ??
          this.nearSuppliersfetchFreelanceList,
      isLoadingnearSuppliersfetchFreelance:
          isLoadingnearSuppliersfetchFreelance ??
              this.isLoadingnearSuppliersfetchFreelance,
      errornearSuppliersfetchFreelance: errornearSuppliersfetchFreelance ??
          this.errornearSuppliersfetchFreelance,
      slidersList: slidersList ?? this.slidersList,
      isLoadingSliders: isLoadingSliders ?? this.isLoadingSliders,
      errorSliders: errorSliders ?? this.errorSliders,
      productList: productList ?? this.productList,
      isLoadingProducts: isLoadingProducts ?? this.isLoadingProducts,
      errorProduct: errorProduct ?? this.errorProduct,
      serviceList: serviceList ?? this.serviceList,
      isLoadingService: isLoadingService ?? this.isLoadingService,
      errorService: errorService ?? this.errorService,
      serviceFetchAllList: serviceFetchAll ?? this.serviceFetchAllList,
      isLoadingServicesFetchAll:
          isLoadingFetchAll ?? this.isLoadingServicesFetchAll,
      errorServiceFetchAll: errorServiceFetchAll ?? this.errorServiceFetchAll,
      serviceFetchFreelanceList:
          serviceFetchFreelance ?? this.serviceFetchFreelanceList,
      isLoadingServicesFetchFreelance:
          isLoadingFetchFreelance ?? this.isLoadingServicesFetchFreelance,
      errorServiceFetchFreelance:
          errorServiceFetchFreelance ?? this.errorServiceFetchFreelance,
      serviceFetchSalonList: serviceFetchSalon ?? this.serviceFetchSalonList,
      isLoadingServicesFetchSalon:
          isLoadingFetchSalon ?? this.isLoadingServicesFetchSalon,
      errorServiceFetchSalon:
          errorServiceFetchSalon ?? this.errorServiceFetchSalon,
    );
  }

  List<Object?> get props => [
        listTopsSalon,
        isLoadingTopSalons,
        errorTopSalons,
        listNearest,
        isLoadingNearest,
        errorNearest,
        nearSuppliersfetchAllList,
        isLoadingnearSuppliersfetchAll,
        errornearSuppliersfetchAll,
        nearSuppliersfetchSalonList,
        isLoadingnearSuppliersfetchSalon,
        errornearSuppliersfetchSalon,
        nearSuppliersfetchFreelanceList,
        isLoadingnearSuppliersfetchFreelance,
        errornearSuppliersfetchFreelance,
        slidersList,
        isLoadingSliders,
        errorSliders,
        productList,
        isLoadingProducts,
        errorProduct,
        serviceList,
        isLoadingService,
        errorService,
        serviceFetchAllList,
        isLoadingServicesFetchAll,
        errorServiceFetchAll,
        serviceFetchFreelanceList,
        isLoadingServicesFetchFreelance,
        errorServiceFetchFreelance,
        serviceFetchSalonList,
        isLoadingServicesFetchSalon,
        errorServiceFetchSalon,
      ];
}
