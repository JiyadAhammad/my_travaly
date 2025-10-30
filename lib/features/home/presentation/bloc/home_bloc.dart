import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_travaly/core/pref/pref.dart';
import 'package:my_travaly/core/utils/app_logger.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/search_auto_complete_response_entity.dart';
import '../../domain/usecase/device_register_usecase.dart';
import '../../domain/usecase/search_auto_complete_usecase.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DeviceRegisterUsecase _deviceRegisterUsecase;
  final SearchAutoCompleteUsecase _searchAutoCompleteUsecase;
  final _deviceInfoPlugin = DeviceInfoPlugin();
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

  Future<void> _getDeviceInfoFn(
    _GetDeviceInfo event,
    Emitter<HomeState> emit,
  ) async {
    final res = await SharedPref.getVisitorToken();
    if (res != null) {
      AppLogger.success('$res  visitor token');
      // Device already Register
      // No need to execute this event again
      return;
    }
    emit(state.copyWith(isLoading: true));
    late final DeviceRegisterParam deviceParam;
    if (Platform.isAndroid) {
      final androidInfo = await _deviceInfoPlugin.androidInfo;

      deviceParam = DeviceRegisterParam(
        deviceModel: androidInfo.model,
        deviceFingerprint: androidInfo.fingerprint,
        deviceBrand: androidInfo.brand,
        deviceId: androidInfo.id,
        deviceName: androidInfo.display,
        deviceManufacturer: androidInfo.manufacturer,
        deviceProduct: androidInfo.product,
        deviceSerialNumber: "unknown",
      );
    } else {
      final iosInfo = await _deviceInfoPlugin.iosInfo;

      deviceParam = DeviceRegisterParam(
        deviceModel: iosInfo.model,
        deviceFingerprint: iosInfo.identifierForVendor ?? "unknown",
        deviceBrand: "Apple",
        deviceId: iosInfo.identifierForVendor ?? "unknown",
        deviceName: iosInfo.name,
        deviceManufacturer: "Apple",
        deviceProduct: iosInfo.model,
        deviceSerialNumber: "unknown",
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
      final result = await _deviceRegisterUsecase(event.deviceData);

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

      final result = await _searchAutoCompleteUsecase(
        event.searchAutoCompleteData,
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
