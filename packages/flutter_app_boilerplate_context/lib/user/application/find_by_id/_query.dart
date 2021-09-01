part of '_use_case.dart';

class FindUserByIdQuery extends Query {
  FindUserByIdQuery(this.id);
  final UserID id;
  factory FindUserByIdQuery.fromJson(Map<String, dynamic> data) {
    final idPrimitive = data['id'] as int;
    return FindUserByIdQuery(UserID(idPrimitive));
  }

  @override
  String get name => 'FindUserByIdQuery';

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id.value};
  }
}
