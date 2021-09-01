part of '../domain.dart';

/// Define all operations that can be user for users
abstract class UserRepository {
  /// Get a list of all users
  Future<List<User>> getAll();

  /// Get the information for a specific user
  Future<User> getById(UserID id);

  /// Delete a user
  Future<void> delete(UserID id);

  /// Update the information of a user
  Future<void> update(UserID id, User newUser);
}
