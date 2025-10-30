import 'package:get_it/get_it.dart';

import 'core/network/dio_client.dart';
import 'features/home/data/data_source/home_remote_datasource.dart';
import 'features/home/data/repository/home_repository_impl.dart';
import 'features/home/domain/repository/home_repository.dart';
import 'features/home/domain/usecase/device_register_usecase.dart';
import 'features/home/domain/usecase/search_auto_complete_usecase.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

final GetIt getIt = GetIt.instance;
Future<void> configureInjection() async {
  // Register Dio
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  getIt.registerFactory<HomeRemoteDatasource>(
    () => HomeRemoteDatasourceImpl(getIt()),
  );
  getIt.registerFactory<HomeRepository>(() => HomeRepositoryImpl(getIt()));
  getIt.registerFactory(() => DeviceRegisterUsecase(getIt()));
  getIt.registerFactory(() => SearchAutoCompleteUsecase(getIt()));
  getIt.registerLazySingleton<HomeBloc>(
    () => HomeBloc(
      deviceRegisterUsecase: getIt(),
      searchAutoCompleteUsecase: getIt(),
    ),
  );
}
