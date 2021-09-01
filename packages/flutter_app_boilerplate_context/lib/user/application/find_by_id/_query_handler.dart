part of '_use_case.dart';

class FindUserByIdQueryHandler
    extends QueryHandler<FindUserByIdQuery, UserResponse> {
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
