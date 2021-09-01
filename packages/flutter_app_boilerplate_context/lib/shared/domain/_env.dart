part of '../domain.dart';

/// Define the execute enviroment for the application,
/// this is used for the dependency injection
enum Environment {
  /// When the application is to production
  production,

  /// When only are in widgets dev
  devFront,

  /// When developing with the backend connected
  devFrontConnected,

  /// Testing the front
  testFront,

  /// Testing the front connected with the backend
  e2e,
}
