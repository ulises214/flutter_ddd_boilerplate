part of '_use_case.dart';

/// Manage the query to get a list for all users
class GetAllUsersQueryHandler
    extends QueryHandler<GetAllUsersQuery, UsersResponse> {
  /// Initialize the runner for the handler
  GetAllUsersQueryHandler(this._runner);
  final GetAllUsersRunner _runner;
  @override
  Future<UsersResponse> handle(GetAllUsersQuery query) {
    return _runner.run();
  }

  @override
  GetAllUsersQuery queryFactory(Map<String, dynamic> data) =>
      GetAllUsersQuery();
  @override
  String suscribedTo() => 'GetAllUsersQuery';
}
