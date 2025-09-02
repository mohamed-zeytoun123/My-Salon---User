import 'package:my_salon/core/Error/failure.dart';
import 'package:my_salon/core/model/slider_model.dart';
import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/core/network/api_request.dart';
import 'package:my_salon/core/network/api_response.dart';
import 'package:my_salon/core/network/app_url.dart';
import 'package:my_salon/featchers/Home/data/model/Product_model.dart';
import 'package:my_salon/featchers/Home/data/model/branch_model.dart';
import 'package:my_salon/featchers/Home/data/model/nearest_model.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';
import 'package:dartz/dartz.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final API api;

  HomeRemoteDataSourceImpl({required this.api});
  //?--------- getTopSalon------------------------------------------------------__
  @override
  Future<Either<Failure, List<BranchModel>>> getTopSalonRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getTopSalon);
      final ApiResponse response = await api.get(request);

      final List<BranchModel> topSuppliersList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          topSuppliersList.add(BranchModel.fromMap(item));
        }

        return Right(topSuppliersList);
      } else {
        return Left(Failure(
            message: response.body['message'].toString(),
            statusCode: response.statusCode));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //?--------- getNearest------------------------------------------------------__
  @override
  Future<Either<Failure, List<NearestModel>>> getNearestRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getNearest);
      final ApiResponse response = await api.get(request);
      final List<NearestModel> nearestList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          nearestList.add(NearestModel.fromMap(item));
        }
        return Right(nearestList);
      } else {
        return Left(Failure(
            statusCode: response.statusCode,
            message: response.body['message'].toString()));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

//?--------- getnear Suppliers fetch All------------------------------------------------------__
  @override
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchAllRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getNearest);
      final ApiResponse response = await api.get(request);

      final List<NearestModel> allList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          allList.add(NearestModel.fromMap(item));
        }
        return Right(allList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

//?--------- getnear Suppliers fetch Salon------------------------------------------------------__
  @override
  Future<Either<Failure, List<NearestModel>>>
      getnearSuppliersFetchSalonRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getNearestFetchSalon);
      final ApiResponse response = await api.get(request);

      final List<NearestModel> salonList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          salonList.add(NearestModel.fromMap(item));
        }
        return Right(salonList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

//?--------- getnear Suppliers fetch Freelance------------------------------------------------------__
  @override
  Future<Either<Failure, List<NearestModel>>>
      getnearSuppliersFetchFreelanceRemote() async {
    try {
      final ApiRequest request =
          ApiRequest(url: AppUrls.getNearestFetchFreelance);
      final ApiResponse response = await api.get(request);

      final List<NearestModel> freelanceList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          freelanceList.add(NearestModel.fromMap(item));
        }
        return Right(freelanceList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //?--------- get Slider------------------------------------------------------__
  @override
  getSliderRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getSliders);
      final ApiResponse response = await api.get(request);

      if (response.statusCode == 200) {
        final data = response.body['data'] as List;
        final sliders = data.map((item) => SliderModel.fromJson(item)).toList();

        return Right(sliders);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //?--------- get Products ------------------------------------------------------__
  @override
  Future<Either<Failure, List<ProductModel>>> getProductsRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getProducts);
      final ApiResponse response = await api.get(request);
      final List<ProductModel> listitem = [];
      if (response.statusCode == 200) {
        for (var element in response.body['data']) {
          listitem.add(ProductModel.fromMap(element));
        }
        return Right(listitem);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (e) {
      return Left(Failure(statusCode: -1, message: "Unexpected error: $e"));
    }
  }

  //?--------- get Services ------------------------------------------------------__

  @override
  Future<Either<Failure, List<ServiceModel>>> getServicesRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> serviceList = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          serviceList.add(ServiceModel.fromMap(item));
        }
        return Right(serviceList);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(Failure(
        statusCode: -1,
        message: "Unexpected error: $exception",
      ));
    }
  }

//?--------- getnear Services fetch All------------------------------------------------------__
  @override
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchAllRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> services = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          services.add(ServiceModel.fromMap(item));
        }
        return Right(services);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //?--------- getnear Services fetch Freelance------------------------------------------------------__

  @override
  Future<Either<Failure, List<ServiceModel>>>
      getServicesFetchFreelanceRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> providerServices = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          if (item['type'] == 2) {
            providerServices.add(ServiceModel.fromMap(item));
          }
        }
        return Right(providerServices);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //?--------- getnear Services fetch Salon------------------------------------------------------__
  @override
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchSalonRemote() async {
    try {
      final ApiRequest request = ApiRequest(url: AppUrls.getServices);
      final ApiResponse response = await api.get(request);

      final List<ServiceModel> storeServices = [];
      if (response.statusCode == 200) {
        for (var item in response.body['data']) {
          if (item['type'] == 1) {
            storeServices.add(ServiceModel.fromMap(item));
          }
        }
        return Right(storeServices);
      } else {
        return Left(Failure(
          statusCode: response.statusCode,
          message: response.body['message'].toString(),
        ));
      }
    } catch (exception) {
      return Left(
          Failure(statusCode: -1, message: "Unexpected error: $exception"));
    }
  }

  //?--------- getnearSuppliers fetch All------------------------------------------------------__
  //?--------- getnearSuppliers fetch All------------------------------------------------------__
  //?--------- getnearSuppliers fetch All------------------------------------------------------__
  //?--------- getnearSuppliers fetch All------------------------------------------------------__
}
