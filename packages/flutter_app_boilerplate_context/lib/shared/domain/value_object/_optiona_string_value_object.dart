part of '_value_object.dart';

/// An class that cant accept null or empty strings
class OptionalStringValueObject extends StringValueObject {
  /// Accept a nulleable string and pass a defual empty string to super
  OptionalStringValueObject([String? value]) : super(value ?? '');
}
