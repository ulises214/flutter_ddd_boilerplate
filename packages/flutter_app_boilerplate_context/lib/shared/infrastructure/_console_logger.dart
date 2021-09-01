// 🎯 Dart imports:
import 'dart:developer' as dev;

// 🌎 Project imports:
import 'package:flutter_app_boilerplate_context/shared/domain.dart';

// ignore_for_file: avoid_print

/// Implementation of [Logger] using the debug console
class ConsoleLogger implements Logger {
  @override
  void debug(String message) => print('\x1B[33m$message\x1B[0m');

  @override
  void errorMessage(String message) => print('\x1B[31m$message\x1B[0m');

  @override
  void error(CustomException error) => print('\x1B[31m${error.cause}\x1B[0m');

  @override
  void info(String message) => dev.log(message);
}
