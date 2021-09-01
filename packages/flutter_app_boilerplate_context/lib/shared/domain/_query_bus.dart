part of '../domain.dart';

/// Creates a queaque to manage the querys
abstract class QueryBus {
  /// Add a [Query] to the quaque and excecute it
  ///
  /// When a [ServerError] or [ConnectionException] occurs, the query is
  /// retried [retryTimes] times, if they fail and [storeInLocal] is true the
  /// query will be saved to retry [retryTimes] times at another time.
  Future<R> ask<R extends Response>(
    Query query, {
    int retryTimes = 0,
    bool storeInLocal = false,
  });

  /// Add a new [QueryHandler] to the registered handlers
  void add(List<QueryHandler> queryHandlers);
}
