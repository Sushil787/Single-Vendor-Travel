part of 'weather_cubit.dart';

@freezed
/// Weather State class
class WeatherState with _$WeatherState {
  ///
  const factory WeatherState.initial() = WeatherInitial;
  ///
  const factory WeatherState.loading() = WeatherLoading;

  
  ///
  const factory WeatherState.loaded({required WeatherData weatherData}) = WeatherLoaded;
  ///
  const factory WeatherState.error({required String message}) = WeatherError;



}
