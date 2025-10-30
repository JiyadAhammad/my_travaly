import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/dio_error_handler.dart';
import '../../../../core/utils/app_logger.dart';
import '../model/device_register_model.dart';
import '../model/search_auto_complete_model.dart';
import '../model/search_auto_complete_response_model.dart';

abstract interface class HomeRemoteDatasource {
  /// Register Device and obtain visitor token
  Future<String> registerDevice({
    required DeviceRegisterModel deviceRegisterModel,
  });

  /// Search Auto complete
  Future<SearchAutoCompleteResponseModel> searchAutoComplete({
    required SearchAutoCompleteModel model,
  });
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  HomeRemoteDatasourceImpl(this.dioClient);
  final DioClient dioClient;

  @override
  Future<String> registerDevice({
    required DeviceRegisterModel deviceRegisterModel,
  }) async {
    try {
      final response = await dioClient.dio.post(
        '',
        data: jsonEncode(deviceRegisterModel.toJson()),
      );

      final result = response.data;

      /*
      Expected Output
      {
          "status": true,
          "message": "Device registered successfully.",
          "responseCode": 201,
          "data": {
            "visitorToken": "7a1f-1c7c-d871-aaf9-5ada-a1a0-abac-ccae"
          }
        }
      */
      AppLogger.info('$result api response');
      if (response.statusCode == 201) {
        final Map<String, dynamic>? data = result['data'];
        final String? visitorToken = data != null
            ? data['visitorToken'] as String?
            : null;

        if (visitorToken == null) {
          throw ServerFailures(
            message: 'Visitor token not found in response',
            statusCode: 201,
          );
        }

        return visitorToken;
      }

      throw Exception('Failed to register device: ${response.data}');
    } on DioException catch (e) {
      throw DioErrorHandler.handle(e);
    } catch (e) {
      throw ClientFailures(message: 'Unexpected error: $e', statusCode: -1);
    }
  }

  @override
  Future<SearchAutoCompleteResponseModel> searchAutoComplete({
    required SearchAutoCompleteModel model,
  }) async {
    try {
      final response = await dioClient.dio.post(
        '',
        data: jsonEncode(model.toJson()),
      );

      final result = response.data;
      final statusCode = response.statusCode ?? -1;

      AppLogger.info('$result api response');
      if (statusCode == 200) {
        return SearchAutoCompleteResponseModel.fromJson(result);
      }

      throw ServerFailures(
        message: result['message'] ?? 'Unexpected Error Occurred',
        statusCode: statusCode,
      );
    } on DioException catch (e) {
      throw DioErrorHandler.handle(e);
    } catch (e) {
      throw ClientFailures(message: 'Unexpected error: $e', statusCode: -1);
    }
  }
}
