part of '_value_object.dart';

/// A simplified version of string
abstract class StringValueObject {
  /// Initialize the value
  const StringValueObject(this._value);

  /// The value contained in the class
  final String _value;

  /// Get the value container in the class
  String get value => _value;

  /// Obverrides the defualt toString
  @override
  String toString() => _value.toString();

  /// Operation to verify if the value is equals to other
  bool equals(StringValueObject other) => other.value == value;
}
