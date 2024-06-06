// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_widget.dart';

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
  void initState() {
    super.initState();
    context.read<BookmarkBloc>().getBookMarks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          'Bookmarks',
          style: context.textTheme.headlineLarge?.copyWith(
            fontSize: 26,
            color: LightColor.textColor,
            fontWeight: FontWeight.w800,
            height: 1,
          ),
        ),
      ),
      body: BlocBuilder<BookmarkBloc, BookmarkState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (state is Loaded) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: state.bookmarks.isEmpty
                  ? Center(
                      child: Text(
                        'Add Some Favourite Package',
                        style: context.textTheme.headlineSmall,
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.bookmarks.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return PackageWidget(
                          travelPackageModel: state.bookmarks[index],
                        );
                      },
                    ),
            );
          }
          return Text(
            'Error Loading Data',
            style: context.textTheme.headlineSmall,
          );
        },
      ),
    );
  }
}
