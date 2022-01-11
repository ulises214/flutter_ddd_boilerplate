part of '_local_query_bus.dart';

/// Store the [QueryHandler] injected and manage the searching
class QueryHandlersInformation {
  /// Store the [QueryHandler] injected and manage the searching
  QueryHandlersInformation(List<QueryHandler> queryHandlers) {
    _queryHandlersMap = _formatHandlers(queryHandlers);
  }
  late final Map<String, QueryHandler> _queryHandlersMap;

  Map<String, QueryHandler> _formatHandlers(
    List<QueryHandler> queryHandlers,
  ) {
    final handlersMap = <String, QueryHandler>{};
    void addHandler(QueryHandler h) => handlersMap[h.suscribedTo()] = h;
    queryHandlers.forEach(addHandler);
    return handlersMap;
  }

  /// Add a handler after it's initialized
  void add(List<QueryHandler> queryHandlers) {
    _queryHandlersMap.addAll(_formatHandlers(queryHandlers));
  }

  /// Finds a query handler by its registered name
  QueryHandler searchByName(String name) {
    final queryHandler = _queryHandlersMap[name];
    if (queryHandler == null) {
      throw InvalidArgumentException(
          "Query with name <$name> isn't registered");
    }
    return queryHandler;
  }

  /// Search the corresponding [QueryHandler]
  QueryHandler search(Query query) {
    try {
      return searchByName(query.name);
    } on InvalidArgumentException {
      throw QueryNotRegisteredException(query);
    }
  }
}
