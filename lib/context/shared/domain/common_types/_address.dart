import 'package:flutter_app_boilerplate_context/shared/domain.dart';
import 'package:flutter_app_boilerplate_context/shared/domain/value_object/_value_object.dart';
part 'address/_city.dart';
part 'address/_street.dart';
part 'address/_suite.dart';
part 'address/_zip_code.dart';

/// A valid addres
class Address {
  /// Creates a valid address
  Address({
    required this.city,
    required this.street,
    required this.suite,
    required this.zipCode,
    required this.geo,
  });

  /// Creates a valid addres from string values
  factory Address.fromPrimitives({
    required String city,
    required String street,
    required String suite,
    required String zipCode,
    required String lat,
    required String lng,
  }) {
    return Address(
      city: AddressCity(city),
      street: AddressStreet(street),
      suite: AddressSuite(suite),
      zipCode: AddressZipCode(zipCode),
      geo: Geo.fromPrimitives(lat: lat, lng: lng),
    );
  }

  /// The citry for the address
  final AddressCity city;

  /// The street for the address
  final AddressStreet street;

  /// The suite for the address
  final AddressSuite suite;

  /// The zip code for the address
  final AddressZipCode zipCode;

  /// The geo for the address
  final Geo geo;

  /// Converts the data to primitive values
  Map<String, dynamic> toPrimitives() {
    return <String, dynamic>{
      'city': city.value,
      'street': street.value,
      'suite': suite.value,
      'zipcode': zipCode.value,
      'geo': geo.toPrimitives(),
    };
  }
}
