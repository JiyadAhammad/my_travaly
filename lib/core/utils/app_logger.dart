import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
  AppLogger._();

  static const bool _enableLogs = kDebugMode; // Only logs in debug mode

  static void info(String message, {String tag = 'INFO'}) {
    if (_enableLogs) {
      log(message, name: tag);
    }
  }

  static void error(String message, {String tag = 'ERROR'}) {
    if (_enableLogs) {
      log('❌ $message', name: tag);
    }
  }

  static void warning(String message, {String tag = 'WARN'}) {
    if (_enableLogs) {
      log('⚠️ $message', name: tag);
    }
  }

  static void success(String message, {String tag = 'SUCCESS'}) {
    if (_enableLogs) {
      log('✅ $message', name: tag);
    }
  }

  static void apiError(String url, dynamic error, {String tag = 'API ERROR'}) {
    if (_enableLogs) {
      log('🔴 API Error at $url → $error', name: tag);
    }
  }
}
