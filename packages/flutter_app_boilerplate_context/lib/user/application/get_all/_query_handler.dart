part of '_use_case.dart';

class GetAllUsersQueryHandler
    extends QueryHandler<GetAllUsersQuery, UsersResponse> {
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
