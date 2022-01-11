import 'package:flutter_app_boilerplate_context/shared/domain/value_object/_value_object.dart';
part 'company/_company_name.dart';
part 'company/_company_catch_phrase.dart';
part 'company/_company_bs.dart';

/// Defines the company for a user
class UserCompany {
  /// Init the company properties
  UserCompany({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  /// Creates a [UserCompany] from primitives types
  factory UserCompany.fromPrimitives({
    required String name,
    required String catchPhrase,
    required String bs,
  }) =>
      UserCompany(
        name: UserCompanyName(name),
        catchPhrase: UserCompanyCatchPhrase(catchPhrase),
        bs: UserCompanyBs(bs),
      );

  /// The name for the company
  final UserCompanyName name;

  /// The catch phrase for the company
  final UserCompanyCatchPhrase catchPhrase;

  /// The bs for the company
  final UserCompanyBs bs;

  /// Converts the data to primitives types
  Map<String, dynamic> toPrimitives() {
    return <String, dynamic>{
      'name': name.value,
      'catchPhrase': catchPhrase.value,
      'bs': bs.value,
    };
  }
}
