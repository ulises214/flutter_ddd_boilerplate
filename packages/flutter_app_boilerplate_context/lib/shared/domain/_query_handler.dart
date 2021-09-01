part of '../domain.dart';

/// Handle the execution of a query
abstract class QueryHandler<Q extends Query, R extends Response> {
  /// Get the query to manage
  String suscribedTo();

  /// Run the query and return the result
  Future<R> handle(Q query);

  /// Creates a query from the provided json data
  Q queryFactory(Map<String, dynamic> data);
}
