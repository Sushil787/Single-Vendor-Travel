// ignore_for_file: one_member_abstracts
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

/// Abstract Class Representing if network is connected or not.
abstract class NetworkInfo {
  /// Method that returns true if network is connected
  Future<bool> isConnected();

  /// Subscription for network connection
  StreamSubscription<ConnectivityResult> get subs;
}

/// Implementation of NetworkInfo class
@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  /// Instance of Connectivity
  final Connectivity connectionChecker = Connectivity();

  ///
  @override
  StreamSubscription<ConnectivityResult> get subs =>
      connectionChecker.onConnectivityChanged
          .listen((ConnectivityResult result) {});

  @override
  Future<bool> isConnected() async =>
      (await connectionChecker.checkConnectivity()) != ConnectivityResult.none;
}
