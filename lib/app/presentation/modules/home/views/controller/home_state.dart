import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default('') String currentPagePath,
  }) = _HomeState;
  static HomeState get initialState =>
      const HomeState(currentPagePath: '/home');
}
