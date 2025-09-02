import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/featchers/Profile/data/model/profile_remote_data_source.dart';

class ProfileRemotDataSourceImpl implements ProfileRemoteDataSource {
  final API api;

  ProfileRemotDataSourceImpl({required this.api});
}
