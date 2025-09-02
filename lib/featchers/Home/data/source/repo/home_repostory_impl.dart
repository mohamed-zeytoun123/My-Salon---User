import 'package:my_salon/core/service/network/network_info_service.dart';
import 'package:my_salon/featchers/Home/data/source/local/home_local_data_source.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';
import 'package:my_salon/featchers/Home/data/source/repo/home_repostory.dart';

class HomeRepostoryImpl implements HomeRepostory {
  final HomeRemoteDataSource remote;
  final HomeLocalDataSource local;
  final NetworkInfoService network;

  HomeRepostoryImpl({
    required this.remote,
    required this.local,
    required this.network,
  });
  //?------------------------------------------------------------------
}
