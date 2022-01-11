part of '_exceptions.dart';

/// Creates a specific exception for invalid argument
class InvalidArgumentException extends CustomException {
  /// Send message to super
  InvalidArgumentException([String? message]) : super(message);
}
