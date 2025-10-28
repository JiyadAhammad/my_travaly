import 'package:dio/dio.dart';
import 'package:my_travaly/core/pref/pref.dart';

import '../api_config/api_config.dart';
import '../utils/app_logger.dart';

class DioClient {
  DioClient() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
              // Auth token should pass through all Endpoint
              options.headers['authtoken'] = ApiConfig.authToken;
              // Check if the endpoint should ignore token

              final String? visitorToken = await SharedPref.getVisitorToken();
              if (visitorToken != null) {
                options.headers['visitortoken'] = visitorToken;
              }

              AppLogger.info(
                '${options.method} ${options.baseUrl}${options.path}',
              );
              AppLogger.info('Headers: ${options.headers}');
              AppLogger.info('Body: ${options.data}');
              return handler.next(options);
            },
        onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
              AppLogger.success(' ${response.statusCode} ${response.data}');
              return handler.next(response);
            },
        onError: (DioException e, ErrorInterceptorHandler handler) async {
          final String requestPath = e.requestOptions.path;
          final int? statusCode = e.response?.statusCode;

          AppLogger.apiError(
            '${e.requestOptions.uri}\n',
            'StatusCode = $statusCode\nResponse = ${e.response?.data}\nRequestPath = $requestPath',
          );

          if (statusCode == 401) {
            AppLogger.info('Attempting token refresh...');
          }
          // Global error handling
          return handler.next(e);
        },
      ),
    );
  }
  static const String baseURL = ApiConfig.baseUrl;
  final Dio dio = Dio(BaseOptions(baseUrl: baseURL));
}
