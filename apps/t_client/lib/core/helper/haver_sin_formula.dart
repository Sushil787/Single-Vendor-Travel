import 'dart:math' show asin, cos, pi, pow, sin, sqrt;

/// distance between latlong
double distance(double lat1, double lon1, double lat2, double lon2) {
  const r = 6372.8; // Earth radius in kilometers

  final dLat = _toRadians(lat2 - lat1);
  final dLon = _toRadians(lon2 - lon1);
  final lat1Radians = _toRadians(lat1);
  final lat2Radians = _toRadians(lat2);

  final a =
      _haversin(dLat) + cos(lat1Radians) * cos(lat2Radians) * _haversin(dLon);
  final c = 2 * asin(sqrt(a));

  return r * c;
}

double _toRadians(double degrees) => degrees * pi / 180;

num _haversin(double radians) => pow(sin(radians / 2), 2);
