import 'package:freezed_annotation/freezed_annotation.dart';

part 'prodcuts_state.freezed.dart';

@freezed
class ProdcutsState<T> with _$ProdcutsState {
  const factory ProdcutsState.initial() = _Initial;
  const factory ProdcutsState.loading() = _Loading;
  const factory ProdcutsState.success(T data) = _Success<T>;
  const factory ProdcutsState.failure(String error) = _Failure;
}
