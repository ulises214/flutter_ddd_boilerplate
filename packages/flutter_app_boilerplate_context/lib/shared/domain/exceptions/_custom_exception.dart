part of '_exceptions.dart';

/// Creates a basic exception
class CustomException implements Exception {
  /// Creates a basic exception with message
  const CustomException([this.cause]);

  /// The caouse of the exception
  final String? cause;
}
