import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(0) int currentPageIndex,
  }) = _HomeState;
  static HomeState get initialState => const HomeState();
}
