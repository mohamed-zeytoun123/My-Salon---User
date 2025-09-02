import 'dart:developer';

import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';
import 'package:my_salon/featchers/Home/presentation/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.remot}) : super(HomeState());
  final HomeRemoteDataSource remot;

  //!_____________getTopSalon________________________________________________________

  getTopSalons() async {
    log("Starting getTopSalons");

    emit(state.copyWith(isLoadingTopSalons: true, errorTopSalons: null));
    log("Emitted loading true getTopSalons");

    final result = await remot.getTopSalonRemote();
    log("Got result from API getTopSalons");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getTopSalons");
        emit(state.copyWith(
          errorTopSalons: failure,
          isLoadingTopSalons: false,
        ));
      },
      (data) {
        log('Success: Got ${data.length} items getTopSalons');
        emit(state.copyWith(
          isLoadingTopSalons: false,
          listTopsSalon: data,
          errorTopSalons: null,
        ));
      },
    );
  }

  //!_____________getNearest________________________________________________________
  getNearest() async {
    log("Starting getNearest");

    emit(state.copyWith(isLoadingNearest: true, errorNearest: null));
    log("Emitted loading true getNearest");

    final result = await remot.getNearestRemote();
    log("Got result from API getNearest");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getNearest");
        emit(state.copyWith(
          errorNearest: failure,
          isLoadingNearest: false,
        ));
      },
      (data) {
        log('Success: Got ${data.length} items getNearest');
        emit(state.copyWith(
          isLoadingNearest: false,
          listNearest: data,
          errorNearest: null,
        ));
      },
    );
  }

  //!_____________getnearSuppliers fetch All________________________________________________________
  getnearSuppliersfetchAll() async {
    log("Starting getnearSuppliersfetchAll");

    emit(state.copyWith(
        isLoadingnearSuppliersfetchAll: true,
        errornearSuppliersfetchAll: null));
    log("Emitted loading true getnearSuppliersfetchAll");

    final result = await remot.getnearSuppliersFetchAllRemote();

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getnearSuppliersfetchAll");
        emit(state.copyWith(
          errornearSuppliersfetchAll: failure,
          isLoadingnearSuppliersfetchAll: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getnearSuppliersfetchAll");
        emit(state.copyWith(
          isLoadingnearSuppliersfetchAll: false,
          nearSuppliersfetchAllList: data,
          errornearSuppliersfetchAll: null,
        ));
      },
    );
  }

  //!_____________getnearSuppliers fetch Salon________________________________________________________
  getnearSuppliersfetchSalon() async {
    log("Starting getnearSuppliersfetchSalon");

    emit(state.copyWith(
        isLoadingnearSuppliersfetchSalon: true,
        errornearSuppliersfetchSalon: null));
    log("Emitted loading true getnearSuppliersfetchSalon");

    final result = await remot.getnearSuppliersFetchSalonRemote();

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getnearSuppliersfetchSalon");
        emit(state.copyWith(
          errornearSuppliersfetchSalon: failure,
          isLoadingnearSuppliersfetchSalon: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getnearSuppliersfetchSalon");
        emit(state.copyWith(
          isLoadingnearSuppliersfetchSalon: false,
          nearSuppliersfetchSalonList: data,
          errornearSuppliersfetchSalon: null,
        ));
      },
    );
  }

//!_____________getnearSuppliers fetch Freelance________________________________________________________
  getnearSuppliersfetchFreelance() async {
    log("Starting getnearSuppliersfetchFreelance");

    emit(state.copyWith(
        isLoadingnearSuppliersfetchFreelance: true,
        errornearSuppliersfetchFreelance: null));
    log("Emitted loading true getnearSuppliersfetchFreelance");

    final result = await remot.getnearSuppliersFetchFreelanceRemote();

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getnearSuppliersfetchFreelance");
        emit(state.copyWith(
          errornearSuppliersfetchFreelance: failure,
          isLoadingnearSuppliersfetchFreelance: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getnearSuppliersfetchFreelance");
        emit(state.copyWith(
          isLoadingnearSuppliersfetchFreelance: false,
          nearSuppliersfetchFreelanceList: data,
          errornearSuppliersfetchFreelance: null,
        ));
      },
    );
  }

  //!_____________get Sliders_______________________________________________________
  getSlider() async {
    log("Starting getSlider");

    emit(state.copyWith(isLoadingSliders: true, errorSliders: null));
    log("Emitted loading true getSlider");

    final result = await remot.getSliderRemote();

    log("Got result from API getSlider");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getSlider");
        emit(state.copyWith(
          errorSliders: failure,
          isLoadingSliders: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getSlider");
        emit(state.copyWith(
          slidersList: data,
          isLoadingSliders: false,
          errorSliders: null,
        ));
      },
    );
  }

  //!_____________get Products________________________________________________________
  getProducts() async {
    log("Starting getProducts");

    emit(state.copyWith(isLoadingProducts: true, errorProduct: null));
    log("Emitted loading true getProducts");

    final result = await remot.getProductsRemote();

    log("Got result from API getProducts");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getProducts");
        emit(state.copyWith(
          errorProduct: failure,
          isLoadingProducts: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getProducts");
        emit(state.copyWith(
          productList: data,
          isLoadingProducts: false,
          errorProduct: null,
        ));
      },
    );
  }

  //!_____________getNearest________________________________________________________
  getService() async {
    log("Starting getService");

    emit(state.copyWith(isLoadingService: true, errorService: null));
    log("Emitted loading true getService");

    final result = await remot.getServicesRemote();
    log("Got result from API getService");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getService");
        emit(state.copyWith(
          errorService: failure,
          isLoadingService: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getService");
        emit(state.copyWith(
          serviceList: data,
          isLoadingService: false,
          errorService: null,
        ));
      },
    );
  }

  //!_____________getnear Services fetch All________________________________________________________
  getServicesFetchAll() async {
    log("Starting getServicesFetchAll");

    emit(state.copyWith(
      isLoadingFetchAll: true,
      errorServiceFetchAll: null,
    ));
    log("Emitted loading true getServicesFetchAll");

    final result = await remot.getServicesFetchAllRemote();
    log("Got result from API getServicesFetchAll");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getServicesFetchAll");
        emit(state.copyWith(
          errorServiceFetchAll: failure,
          isLoadingFetchAll: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getServicesFetchAll");
        emit(state.copyWith(
          serviceFetchAll: data,
          isLoadingFetchAll: false,
          errorServiceFetchAll: null,
        ));
      },
    );
  }

  //!_____________getnear Services fetch Freelance________________________________________________________
  getServicesFetchFreelance() async {
    log("Starting getServicesFetchFreelance");

    emit(state.copyWith(
      isLoadingFetchFreelance: true,
      errorServiceFetchFreelance: null,
    ));
    log("Emitted loading true getServicesFetchFreelance");

    final result = await remot.getServicesFetchFreelanceRemote();
    log("Got result from API getServicesFetchFreelance");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getServicesFetchFreelance");
        emit(state.copyWith(
          errorServiceFetchFreelance: failure,
          isLoadingFetchFreelance: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getServicesFetchFreelance");
        emit(state.copyWith(
          serviceFetchFreelance: data,
          isLoadingFetchFreelance: false,
          errorServiceFetchFreelance: null,
        ));
      },
    );
  }

  //!_____________getnear Services fetch Salon________________________________________________________
  getServicesFetchSalon() async {
    log("Starting getServicesFetchSalon");

    emit(state.copyWith(
      isLoadingFetchSalon: true,
      errorServiceFetchSalon: null,
    ));
    log("Emitted loading true getServicesFetchSalon");

    final result = await remot.getServicesFetchSalonRemote();
    log("Got result from API getServicesFetchSalon");

    result.fold(
      (failure) {
        log("Failure: ${failure.message} getServicesFetchSalon");
        emit(state.copyWith(
          errorServiceFetchSalon: failure,
          isLoadingFetchSalon: false,
        ));
      },
      (data) {
        log("Success: Got ${data.length} items getServicesFetchSalon");
        emit(state.copyWith(
          serviceFetchSalon: data,
          isLoadingFetchSalon: false,
          errorServiceFetchSalon: null,
        ));
      },
    );
  }
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
  //!_____________getNearest________________________________________________________
}
