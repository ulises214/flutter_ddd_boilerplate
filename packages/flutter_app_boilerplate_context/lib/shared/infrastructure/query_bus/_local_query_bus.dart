import 'dart:async';
import 'dart:convert';

import 'package:flutter_app_boilerplate_context/shared/domain.dart';
import 'package:flutter_app_boilerplate_context/shared/infrastructure/storage/_hive_storage_box.dart';
part '_query_handlers_information.dart';
part '_stored_query.dart';

const _incompleteQuerysKey = 'incomplete querys key';

/// Creates a queaque in memory for the querys
class LocalQueryBus extends HiveStorage implements QueryBus {
  /// Creates a queaque in memory for the querys
  LocalQueryBus(this._handlersInformation) {
    Timer.periodic(const Duration(minutes: 10), (t) => _reRunQuerys());
  }
  final QueryHandlersInformation _handlersInformation;

  @override
  void add(List<QueryHandler> queryHandlers) {
    _handlersInformation.add(queryHandlers);
  }

  @override
  Future<R> ask<R extends Response>(
    Query query, {
    int retryTimes = 0,
    bool storeInLocal = false,
  }) {
    final handler = _handlersInformation.search(query);
    try {
      return handler.handle(query) as Future<R>;
    } catch (e) {
      if (!(e is ServerError || e is ConnectionException) ||
          (retryTimes <= 0 && !storeInLocal)) rethrow;
      if (retryTimes > 0) {
        return ask<R>(
          query,
          retryTimes: retryTimes--,
          storeInLocal: storeInLocal,
        );
      }
      if (storeInLocal) _storeQuery(query, retryTimes);
      rethrow;
    }
  }

  @override
  String get boxName => 'Local QueryBus: Stored querys';

  List<_StoredQuery> _getStoredQuerys() {
    final storedQuerysJson = read(_incompleteQuerysKey) ?? '[]';
    return (json.decode(storedQuerysJson) as List<Map<String, dynamic>>)
        .map((e) => _StoredQuery.fromJson(e))
        .toList();
  }

  void _storeQuery(Query query, int retryTimes) {
    final queryToStore = _StoredQuery(query.name, query.toJson(), retryTimes);
    final newQuerys = _getStoredQuerys()..add(queryToStore);
    _updateStoredQuerys(newQuerys);
  }

  void _updateStoredQuerys(List<_StoredQuery> querys) {
    final newQuerysJson = json.encode(querys.map((e) => e.toJson()).toList());
    store(_incompleteQuerysKey, newQuerysJson);
  }

  Future<void> _reRunQuerys() async {
    final querys = _getStoredQuerys();
    for (final storedQuery in querys) {
      final query = _handlersInformation
          .searchByName(storedQuery.queryName)
          .queryFactory(storedQuery.queryData);
      try {
        await ask(query);
        // ignore: empty_catches
      } catch (e) {}
    }
    _updateStoredQuerys([]);
  }
}
