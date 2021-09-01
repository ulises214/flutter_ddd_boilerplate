part of '_value_object.dart';

/// A simplified version of string
abstract class IntValueObject {
  /// Initialize the value
  const IntValueObject(this._value);

  /// The value contained in the class
  final int _value;

  /// Get the value container in the class
  int get value => _value;

  /// Obverrides the defualt toString
  @override
  String toString() => _value.toString();

  /// Operation to verify if the value is equals to other
  bool equals(IntValueObject other) => other.value == value;
}
