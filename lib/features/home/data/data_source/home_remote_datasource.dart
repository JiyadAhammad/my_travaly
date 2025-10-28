import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_travaly/core/error/failures.dart';
import 'package:my_travaly/core/utils/app_logger.dart';

import '../../../../core/network/dio_client.dart';
import '../model/device_register_model.dart';

abstract interface class HomeRemoteDatasource {
  /// Register Device and obtain visitor token
  Future<String> registerDevice({
    required DeviceRegisterModel deviceRegisterModel,
  });
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  HomeRemoteDatasourceImpl(this.dioClient);
  final DioClient dioClient;

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
      final int statusCode = e.response?.statusCode ?? -1;
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.unknown) {
        throw ClientFailures(
          message: 'No internet connection or timeout',
          statusCode: statusCode,
        );
      } else if (e.response != null) {
        throw ServerFailures(
          message: 'Server responded with error: ${e.response?.statusCode}',
          statusCode: statusCode,
        );
      } else {
        throw ClientFailures(
          message: 'Unexpected client error: ${e.message}',
          statusCode: statusCode,
        );
      }
    } catch (e) {
      throw ClientFailures(message: 'Unexpected error: $e', statusCode: -1);
    }
  }
}
