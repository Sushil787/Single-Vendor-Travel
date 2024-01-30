import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_bloc_state.freezed.dart';

@freezed
 class BaseState<T> with _$BaseState<T> {
  const factory BaseState.initial() = _Initial;
  const factory BaseState.loading() = _Loading;
  const factory BaseState.next(T next) = _Next<T>;
  const factory BaseState.success() = _Success;

  const factory BaseState.error(String message) = _Error;
}
