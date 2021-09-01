part of '_common_types.dart';

/// Creates a valid password
class ValidPassword extends RequiredStringValueObject {
  /// Verify the passowrd
  ValidPassword(String value) : super(value) {
    if (this.value.length < 8) {
      throw InvalidArgumentException(
        'La contraseña debe contener al menos 8 caracteres',
      );
    }
  }
}
