part of '../domain.dart';

/// A interface to create querys
abstract class Query {
  /// An name for identify the query in a query bus
  String get name;

  /// Convert the data of the query to primitives datatypes
  ///
  /// Useful for storing or sending by http
  Map<String, dynamic> toJson();
}
