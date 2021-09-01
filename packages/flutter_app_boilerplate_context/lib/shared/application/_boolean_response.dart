part of '../application.dart';

/// Creates an common response for boolean values
class BooleanResponse extends Response {
  /// Accept an boolean value
  BooleanResponse(this.value);

  /// The value of the response
  final bool value;
}
