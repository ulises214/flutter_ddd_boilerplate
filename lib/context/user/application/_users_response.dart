part of '../application.dart';

/// Defines a [Response] for a list of useres
class UsersResponse extends Response {
  /// Initialize the user list
  UsersResponse(this.users);

  /// The value contained in the class
  final List<User> users;
}
