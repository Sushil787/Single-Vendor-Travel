import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/api_constant.dart';
import 'package:t_client/core/constants/app_constants.dart';
import 'package:t_client/features/package/data/model/weather_model.dart';
part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

///
@injectable
class WeatherCubit extends Cubit<WeatherState> {
  ///
  WeatherCubit({required this.dio}) : super(const WeatherState.initial());

  /// Dio instance
  final Dio dio;

  /// Get Weather
  Future<void> getWeather({
    required String lat,
    required String long,
  }) async {
    try {
      emit(const WeatherState.loading());
      final response = await dio.get(
          '${weatherApi}weather?lat=$lat&lon=$long&appid=${AppConstants.appId}',);
      final data = WeatherData.fromJson(response.data as Map<String, dynamic>);
      emit(WeatherState.loaded(weatherData: data));
    } catch (e, s) {
      log(s.toString());
      emit(WeatherState.error(message: e.toString()));
    }
  }
}
// https://api.openweathermap.org/data/2.5/
