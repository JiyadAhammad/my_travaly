import 'package:get_it/get_it.dart';
import 'package:my_travaly/features/home/data/data_source/home_remote_datasource.dart';
import 'package:my_travaly/features/home/data/repository/home_repository_impl.dart';
import 'package:my_travaly/features/home/domain/repository/home_repository.dart';
import 'package:my_travaly/features/home/domain/usecase/device_register_usecase.dart';
import 'package:my_travaly/features/home/presentation/bloc/home_bloc.dart';

import 'core/network/dio_client.dart';

final GetIt getIt = GetIt.instance;
Future<void> configureInjection() async {
  // Register Dio
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  getIt.registerFactory<HomeRemoteDatasource>(
    () => HomeRemoteDatasourceImpl(getIt()),
  );
  getIt.registerFactory<HomeRepository>(() => HomeRepositoryImpl(getIt()));
  getIt.registerFactory(() => DeviceRegisterUsecase(getIt()));
  getIt.registerLazySingleton<HomeBloc>(
    () => HomeBloc(deviceRegisterUsecase: getIt()),
  );
}
