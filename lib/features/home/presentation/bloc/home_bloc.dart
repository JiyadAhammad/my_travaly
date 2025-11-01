import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/pref/pref.dart';
import '../../../../core/utils/app_logger.dart';
import '../../domain/entities/search_auto_complete_response_entity.dart';
import '../../domain/usecase/device_register_usecase.dart';
import '../../domain/usecase/search_auto_complete_usecase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required DeviceRegisterUsecase deviceRegisterUsecase,
    required SearchAutoCompleteUsecase searchAutoCompleteUsecase,
  }) : _deviceRegisterUsecase = deviceRegisterUsecase,
       _searchAutoCompleteUsecase = searchAutoCompleteUsecase,
       super(HomeState.initial()) {
    on<_GetDeviceInfo>(_getDeviceInfoFn);
    on<_RegisterDevice>(_deviceRegisterFn);
    on<_SearchAutoComplete>(_searchAutoCompleteFn);
  }
  final DeviceRegisterUsecase _deviceRegisterUsecase;
  final SearchAutoCompleteUsecase _searchAutoCompleteUsecase;
  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  Future<void> _getDeviceInfoFn(
    _GetDeviceInfo event,
    Emitter<HomeState> emit,
  ) async {
    final String? res = await SharedPref.getVisitorToken();
    if (res != null) {
      AppLogger.success('$res  visitor token');
      // Device already Register
      // No need to execute this event again
      return;
    }
    emit(state.copyWith(isLoading: true));
    late final DeviceRegisterParam deviceParam;
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await _deviceInfoPlugin.androidInfo;

      deviceParam = DeviceRegisterParam(
        deviceModel: androidInfo.model,
        deviceFingerprint: androidInfo.fingerprint,
        deviceBrand: androidInfo.brand,
        deviceId: androidInfo.id,
        deviceName: androidInfo.display,
        deviceManufacturer: androidInfo.manufacturer,
        deviceProduct: androidInfo.product,
        deviceSerialNumber: 'unknown',
      );
    } else {
      final IosDeviceInfo iosInfo = await _deviceInfoPlugin.iosInfo;

      deviceParam = DeviceRegisterParam(
        deviceModel: iosInfo.model,
        deviceFingerprint: iosInfo.identifierForVendor ?? 'unknown',
        deviceBrand: 'Apple',
        deviceId: iosInfo.identifierForVendor ?? 'unknown',
        deviceName: iosInfo.name,
        deviceManufacturer: 'Apple',
        deviceProduct: iosInfo.model,
        deviceSerialNumber: 'unknown',
      );
    }

    add(HomeEvent.registerDevice(deviceData: deviceParam));
  }

  Future<void> _deviceRegisterFn(
    _RegisterDevice event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final Either<AppFailures, String> result = await _deviceRegisterUsecase(
        event.deviceData,
      );

      result.fold(
        (AppFailures failure) {
          AppLogger.error(
            '[${failure.statusCode}] ${failure.message}  Bloc error',
          );
          emit(
            state.copyWith(
              isLoading: false,
              isError: true,
              errorMessage: failure.message,
            ),
          );
        },
        (String visitorToken) {
          AppLogger.success('$visitorToken Bloc success');
          SharedPref.setVisitorToken(visitorToken: visitorToken);
          emit(
            state.copyWith(
              isLoading: false,
              isVisitorTokenReceived: true,
              visitorToken: visitorToken,
              isError: false,
              errorMessage: null,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _searchAutoCompleteFn(
    _SearchAutoComplete event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(state.copyWith(isSearchLoading: true));

      final Either<AppFailures, SearchAutoCompleteResponseEntity> result =
          await _searchAutoCompleteUsecase(event.searchAutoCompleteData);

      result.fold(
        (AppFailures failure) {
          AppLogger.error(
            '[${failure.statusCode}] ${failure.message}  Bloc error',
          );
          emit(
            state.copyWith(
              isLoading: false,
              isError: true,
              errorMessage: failure.message,
            ),
          );
        },
        (SearchAutoCompleteResponseEntity searchResult) {
          emit(
            state.copyWith(
              isSearchLoading: false,
              searchResult: searchResult,
              isSearchError: false,
              searchErrorMessage: null,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isSearchLoading: false,
          isSearchError: true,
          searchErrorMessage: e.toString(),
        ),
      );
    }
  }
}
