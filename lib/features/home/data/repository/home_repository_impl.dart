import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/safe_call.dart';
import '../../domain/entities/device_register_entity.dart';
import '../../domain/entities/search_auto_complete_entity.dart';
import '../../domain/entities/search_auto_complete_response_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../data_source/home_remote_datasource.dart';
import '../model/device_register_model.dart';
import '../model/search_auto_complete_model.dart';
import '../model/search_auto_complete_response_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl(this.remoteDataSource);
  final HomeRemoteDatasource remoteDataSource;

  @override
  Future<Either<AppFailures, String>> registerDevice({
    required DeviceRegisterEntity deviceRegisterEntity,
  }) async {
    return safeCall(() async {
      return remoteDataSource.registerDevice(
        deviceRegisterModel: DeviceRegisterModel.fromEntity(
          deviceRegisterEntity,
        ),
      );
    });
  }

  @override
  Future<Either<AppFailures, SearchAutoCompleteResponseEntity>>
  searchAutoComplete({
    required SearchAutoCompleteEntity searchAutoCompleteEntity,
  }) async {
    return safeCall(() async {
      final SearchAutoCompleteResponseModel res = await remoteDataSource
          .searchAutoComplete(
            model: SearchAutoCompleteModel.fromEntity(searchAutoCompleteEntity),
          );
      return res.toEntity();
    });
  }
}
