import 'package:flutter/material.dart';
import 'package:flutter_gearbox/flutter_gearbox.dart';
import 'package:logger/logger.dart';

final logger = _CustomLogger();

final _log = Logger(
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    lineLength: 1000,
    colors: true,
    printEmojis: true,
    printTime: false,
  ),
);

class _CustomLogger {
  void print(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) debugPrint(message);
  }

  void info(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.i(message, extra, stackTrace);
  }

  void verbose(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.v(message, extra, stackTrace);
  }

  void wtf(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.wtf(message, extra, stackTrace);
  }

  void debug(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.d(message, extra, stackTrace);
  }

  void warning(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.w(message);
  }

  void error(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.e(message);
  }
}
