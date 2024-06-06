import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cached_tile_provider/flutter_map_cached_tile_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/helper/haver_sin_formula.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/ios_back_button.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/package/presentation/ui/home/home_screen.dart';
import 'package:t_client/features/package/presentation/ui/package/package_screen.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/icon_text_row.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_widget.dart';

/// Map Screen
class MapScreen extends StatefulWidget {
  ///
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng? _currentPosition;
  bool isLoading = false;
  late MapController _mapController;
  List<TravelPackageModel> packages = [];
  List<Marker> markers = [];
  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    packages = context.read<TravelBloc>().package;
    packages.sort(
      (a, b) => distance(
        userLocation.value.latitude,
        userLocation.value.longitude,
        a.latitude,
        a.longitude,
      ).compareTo(
        distance(
          userLocation.value.latitude,
          userLocation.value.longitude,
          b.latitude,
          b.longitude,
        ),
      ),
    );
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        _currentPosition = userLocation.value;
        markers.add(
          Marker(
            point: userLocation.value,
            width: 100,
            height: 100,
            child: const Icon(
              Icons.my_location_rounded,
              color: Colors.red,
            ),
          ),
        );
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialZoom: 6,
              initialCenter: _currentPosition != null
                  ? LatLng(
                      _currentPosition!.latitude,
                      _currentPosition!.longitude,
                    )
                  : const LatLng(27.7172, 85.3240),
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.app.travel',
                tileProvider: CachedTileProvider(),
              ),
              MarkerLayer(
                markers: [...markers],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: context.height * .25,
              width: double.infinity,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.separated(
                  separatorBuilder: (context, index) => HorizontalGap.m,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final lat = packages[index].latitude;
                    final long = packages[index].longitude;
                    final dis = distance(
                      userLocation.value.latitude,
                      userLocation.value.longitude,
                      lat,
                      long,
                    );
                    log(name: 'distance', dis.toString());
                    return Container(
                      width: context.width,
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 40,
                      ),
                      child: PackageWidget(
                        distance: distance(
                          userLocation.value.latitude,
                          userLocation.value.longitude,
                          lat,
                          long,
                        ),
                        isMapScreen: true,
                        travelPackageModel: packages[index],
                        onTap: () {
                          markers.add(
                            Marker(
                              height: 70,
                              width: 200,
                              // alignment: Alignment.centerRight,
                              point: LatLng(
                                packages[index].latitude,
                                packages[index].longitude,
                              ),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Text(
                                          '${packages[index].packageName}\n${packages[index].location}',
                                          style: context.textTheme.labelSmall
                                              ?.copyWith(fontSize: 8),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      size: 20,
                                      Icons.location_on_sharp,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                          _mapController.move(
                              LatLng(
                                packages[index].latitude,
                                packages[index].longitude,
                              ),
                              8);
                          setState(() {});
                        },
                      ),
                    );
                  },
                  itemCount: packages.length,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IosBackButton(
              showFill: true,
              onTap: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    ));
  }
}
