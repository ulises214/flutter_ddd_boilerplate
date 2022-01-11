import 'package:flutter_app_boilerplate_context/shared/domain.dart';
part 'geo/_lat_lng.dart';

/// Defines a geo with lat and lng
class Geo {
  /// Creates the lat and lng for geo
  Geo({required this.lat, required this.lng});

  /// Creates an valid geo from primitives data
  factory Geo.fromPrimitives({required String lat, required String lng}) {
    return Geo(lat: Lat(lat), lng: Lng(lng));
  }

  /// Latitude
  final Lat lat;

  /// Longitud
  final Lng lng;

  /// Convert the data to primitives types
  Map<String, dynamic> toPrimitives() {
    return <String, dynamic>{
      'lat': lat.value,
      'lng': lng.value,
    };
  }
}
