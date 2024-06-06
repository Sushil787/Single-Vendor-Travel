import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:panorama_viewer/panorama_viewer.dart';
import 'package:t_client/core/helper/geolocator_permission.dart';

////
class PanaromicViewScreen extends StatefulWidget {
  ///
  const PanaromicViewScreen({required this.imageUrl, super.key});

  ///
  final String imageUrl;

  @override
  State<PanaromicViewScreen> createState() => _PanaromicViewScreenState();
}

class _PanaromicViewScreenState extends State<PanaromicViewScreen> {
  double _lat = 0;
  double _lng = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Geolocator.requestPermission();
      final pos = await determinePosition();
      _lat = pos.latitude;
      _lng = pos.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: PanoramaViewer(
          onViewChanged: (longitude, latitude, tilt) {
            setState(() {
              _lat = latitude;
              _lng = longitude;
            });
          },
          latitude: _lat,
          longitude: _lng,
          animSpeed: 0.1,
          sensorControl: SensorControl.orientation,
          child: Image.network(widget.imageUrl),
        ),
      ),
    );
  }
}
