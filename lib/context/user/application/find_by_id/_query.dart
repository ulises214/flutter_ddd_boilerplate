part of '_use_case.dart';

/// Find a user from an [UserID]
class FindUserByIdQuery extends Query {
  /// Initialize the id
  FindUserByIdQuery(this.id);

  /// Creates a query from a json
  factory FindUserByIdQuery.fromJson(Map<String, dynamic> data) {
    final idPrimitive = data['id'] as int;
    return FindUserByIdQuery(UserID(idPrimitive));
  }

  /// The id data used for this query
  final UserID id;

  @override
  String get name => 'FindUserByIdQuery';

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id.value};
  }
}
