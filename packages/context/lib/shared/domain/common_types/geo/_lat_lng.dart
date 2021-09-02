part of '../_geo.dart';

/// Defines a valid lat for [Geo]
class Lat extends RequiredStringValueObject {
  /// Initialize the lat for [Geo]
  Lat(String value) : super(value);
}

/// Defines a valid lng for [Geo]
class Lng extends RequiredStringValueObject {
  /// Initialize the lng for [Geo]
  Lng(String value) : super(value);
}
