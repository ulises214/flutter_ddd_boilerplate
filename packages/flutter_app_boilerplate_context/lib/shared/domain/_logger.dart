part of '../domain.dart';

/// An interface to store the logs for the application
abstract class Logger {
  /// Debbuging messages
  void debug(String message);

  /// Error based on a string
  void errorMessage(String message);

  /// Error based on a [Exception]
  void error(CustomException error);

  /// Info messages
  void info(String message);
}
