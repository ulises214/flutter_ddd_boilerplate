part of '_value_object.dart';

/// Creates a class to manage logic for enums
abstract class EnumValueObject<T> {
  /// Creates a class to manage logic for enums
  EnumValueObject(this.value, this.validValues);

  /// The current value
  final T value;

  /// The valid values for [value]
  final List<T> validValues;

  /// Check if [value] exists on [validValues]
  void checkValueIsValid(T value) {
    if (!validValues.contains(value)) throwErrorForInvalidValue(value);
  }

  /// Throw error for invalid value
  void throwErrorForInvalidValue(T value);
}
