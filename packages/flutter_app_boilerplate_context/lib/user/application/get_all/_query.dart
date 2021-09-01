part of '_use_case.dart';

/// Get a list of users
class GetAllUsersQuery extends Query {
  /// Creates the query
  GetAllUsersQuery();

  /// Creates a query from a json
  factory GetAllUsersQuery.fromJson(Map<String, dynamic> _) {
    return GetAllUsersQuery();
  }

  @override
  String get name => 'GetAllUsersQuery';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
