part of '_common_types.dart';

const Pattern _pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

/// Verify a valid phone number
class PhoneNumber extends RequiredStringValueObject {
  /// Verify a valid phone number
  PhoneNumber(String value) : super(value) {
    if (!Fzregex.hasMatch(this.value, _pattern)) {
      throw InvalidArgumentException("<$value> isn't a valid phone number");
    }
  }

  /// Generates a random phone number
  factory PhoneNumber.random() {
    return PhoneNumber(
      Faker().phoneNumber.random.fromPattern(<String>['##########']),
    );
  }
}
