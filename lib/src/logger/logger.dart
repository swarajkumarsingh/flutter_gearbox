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
  /// [print]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// print("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void print(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) debugPrint(message);
  }

  /// [info]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// info("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void info(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.i(message, extra, stackTrace);
  }

  /// [verbose]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// verbose("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void verbose(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.v(message, extra, stackTrace);
  }

  /// [wtf]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// wtf("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void wtf(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.wtf(message, extra, stackTrace);
  }

  /// [debug]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// debug("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void debug(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.d(message, extra, stackTrace);
  }

  /// [warning]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// warning("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void warning(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.w(message);
  }

  /// [error]
  ///
  /// [Description]: prints the result
  ///
  /// [Parameters]:
  /// - [dynamic message]: Message for the print
  /// - [dynamic extra]: extras for the print
  /// - [StackTrace? stackTrace]: stackTrace for the print
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// error("MESSAGE", extra: "", stackTrace=e.stackTrace);
  /// ```
  ///
  /// [Additional Notes]: This print statement will work only in debug mode
  void error(dynamic message, [dynamic extra, StackTrace? stackTrace]) {
    if (isDebugMode) _log.e(message);
  }
}
