import 'package:dio/dio.dart';
import '../error/failures.dart';

class DioErrorHandler {
  static AppFailures handle(DioException e) {
    final int statusCode = e.response?.statusCode ?? -1;

    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.unknown) {
      return ClientFailures(
        message: 'No internet connection or timeout',
        statusCode: statusCode,
      );
    }

    if (e.response != null) {
      return ServerFailures(
        message:
            e.response?.data?['message'] ??
            'Server responded with status $statusCode',
        statusCode: statusCode,
      );
    }

    return ClientFailures(
      message: e.message ?? 'Unexpected Dio client error',
      statusCode: statusCode,
    );
  }
}
