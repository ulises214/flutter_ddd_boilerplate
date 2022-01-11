part of '_exceptions.dart';

/// Exception when the query handler isnt registered
class QueryNotRegisteredException extends CustomException {
  /// Exception when the query handler isnt registered
  QueryNotRegisteredException(Query query)
      : super(
          "The query <${query.runtimeType}> hasn't a query handler associated",
        );
}
