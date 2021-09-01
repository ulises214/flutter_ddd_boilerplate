part of '_use_case.dart';

class GetAllUsersQuery extends Query {
  GetAllUsersQuery();
  @override
  factory GetAllUsersQuery.fromJson(Map<String, dynamic> _) {
    return GetAllUsersQuery();
  }

  @override
  String get name => 'GetAllUsersQuery';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
