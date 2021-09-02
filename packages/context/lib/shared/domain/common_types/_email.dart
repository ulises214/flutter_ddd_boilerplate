part of '_common_types.dart';

/// Creates and verify a valid email address
class EmailAddress extends RequiredStringValueObject {
  /// The value can't be empty and is a valid email
  EmailAddress(String value) : super(value) {
    if (!Fzregex.hasMatch(this.value, FzPattern.email)) {
      throw InvalidArgumentException("<$value> isn't a valid email address");
    }
  }
}
