// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:panorama_viewer/panorama_viewer.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/geolocator_permission.dart';
import 'package:t_client/core/widgets/custom_button.dart';

// class BookMarkScreen extends StatefulWidget {
//   const BookMarkScreen({super.key});

//   @override
//   State<BookMarkScreen> createState() => _BookMarkScreenState();
// }

// class _BookMarkScreenState extends State<BookMarkScreen> {
//   double _lat = 0;
//   double _lng = 0;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//       await Geolocator.requestPermission();
//       final pos = await determinePosition();
//       _lat = pos.latitude;
//       _lng = pos.longitude;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PanoramaViewer(
//       onViewChanged: (longitude, latitude, tilt) {
//         setState(() {
//           _lat = latitude;
//           _lng = longitude;
//         });
//       },
//       latitude: _lat,
//       longitude: _lng,
//       animSpeed: 0.1,
//       sensorControl: SensorControl.orientation,
//       child: Image.network(
//           'https://l13.alamy.com/360/WKMJE4/full-seamless-spherical-panorama-360-degrees-angle-view-on-bank-of-wide-river-in-front-of-bridge-in-city-center-360-panorama-in-equirectangular-proje-WKMJE4.jpg'),
//     );
//   }
// }

// Bookmark Screen
class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          'Bookmarks',
          style: context.theme.appBarTheme.titleTextStyle?.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomElevatedButton(
                onButtonPressed: () {}, buttonText: "buttonText"),
          )
        ],
      ),
    );
  }
}
