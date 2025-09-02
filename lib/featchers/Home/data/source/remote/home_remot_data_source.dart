import 'package:my_salon/core/Error/failure.dart';
import 'package:my_salon/core/model/slider_model.dart';
import 'package:my_salon/featchers/Home/data/model/Product_model.dart';
import 'package:my_salon/featchers/Home/data/model/branch_model.dart';
import 'package:my_salon/featchers/Home/data/model/nearest_model.dart';
import 'package:my_salon/featchers/Home/data/model/service_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failure, List<BranchModel>>> getTopSalonRemote();
  Future<Either<Failure, List<NearestModel>>> getNearestRemote();
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchAllRemote();
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchSalonRemote();
  Future<Either<Failure, List<NearestModel>>> getnearSuppliersFetchFreelanceRemote();
  Future<Either<Failure, List<SliderModel>>> getSliderRemote();
  Future<Either<Failure, List<ProductModel>>> getProductsRemote();
  Future<Either<Failure, List<ServiceModel>>> getServicesRemote();
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchAllRemote();
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchSalonRemote();
  Future<Either<Failure, List<ServiceModel>>> getServicesFetchFreelanceRemote();
}
