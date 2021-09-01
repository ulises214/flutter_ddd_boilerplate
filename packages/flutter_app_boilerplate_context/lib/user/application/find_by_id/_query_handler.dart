part of '_use_case.dart';

/// Manage the query to get a user from id
class FindUserByIdQueryHandler
    extends QueryHandler<FindUserByIdQuery, UserResponse> {
  /// Initialize the runner for the handler
  FindUserByIdQueryHandler(this._runner);
  final FindUserByIdRunner _runner;
  @override
  Future<UserResponse> handle(FindUserByIdQuery query) {
    return _runner.run(query.id);
  }

  @override
  FindUserByIdQuery queryFactory(Map<String, dynamic> data) {
    return FindUserByIdQuery.fromJson(data);
  }

  @override
  String suscribedTo() => 'FindUserByIdQuery';
}
