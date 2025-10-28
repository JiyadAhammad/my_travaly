import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/device_register_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../data_source/home_remote_datasource.dart';
import '../model/device_register_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatasource remoteDataSource;

  HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppFailures, String>> registerDevice({
    required DeviceRegisterEntity deviceRegisterEntity,
  }) async {
    try {
      final res = await remoteDataSource.registerDevice(
        deviceRegisterModel: DeviceRegisterModel.fromEntity(
          deviceRegisterEntity,
        ),
      );

      return right(res);
    } on ClientFailures catch (e) {
      return left(ClientFailures(message: e.message, statusCode: e.statusCode));
    } on ServerFailures catch (e) {
      return left(ServerFailures(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return left(AppFailures(message: e.toString(), statusCode: -1));
    }
  }
}
