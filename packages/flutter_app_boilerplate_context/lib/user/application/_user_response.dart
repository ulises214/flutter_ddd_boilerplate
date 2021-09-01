part of '../application.dart';

/// Defines a [Response] for asingle user
class UserResponse extends Response {
  /// Initialize the user
  UserResponse(this.user);

  /// The value contained in the class
  final User user;
}
