part of '_use_case.dart';

/// Manage the query to get a user from id
class DeleteUserQueryHandler
    extends QueryHandler<DeleteUserQuery, VoidResponse> {
  /// Initialize the runner for the handler
  DeleteUserQueryHandler(this._runner);
  final DeleteUserRunner _runner;
  @override
  Future<VoidResponse> handle(DeleteUserQuery query) {
    return _runner.run(query.id);
  }

  @override
  DeleteUserQuery queryFactory(Map<String, dynamic> data) {
    return DeleteUserQuery.fromJson(data);
  }

  @override
  String suscribedTo() => 'DeleteUserQuery';
}
