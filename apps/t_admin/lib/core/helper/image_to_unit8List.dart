import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// USe Future.wait to get all byte String . okay so we get all future response at once
Future<Uint8List?> getUnit8List(
  String vrImage,
) async {
  final response = await http.get(
    Uri.parse(vrImage),
  );
  log(response.bodyBytes.toString());
  return response.bodyBytes;
}




