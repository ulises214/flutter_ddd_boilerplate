part of '_use_case.dart';

/// Delete a user from an [UserID]
class DeleteUserQuery extends Query {
  /// Initialize the id
  DeleteUserQuery(this.id);

  /// Creates a query from a json
  factory DeleteUserQuery.fromJson(Map<String, dynamic> data) {
    final idPrimitive = data['id'] as int;
    return DeleteUserQuery(UserID(idPrimitive));
  }

  /// The id data used for this query
  final UserID id;

  @override
  String get name => 'DeleteUserQuery';

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id.value};
  }
}
