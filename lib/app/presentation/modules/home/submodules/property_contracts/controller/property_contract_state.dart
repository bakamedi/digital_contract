import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/models/property/response/property_model.dart';

part 'property_contract_state.freezed.dart';

@freezed
class PropertyContractState with _$PropertyContractState {
  const factory PropertyContractState({
    // states
    @Default(false) bool initialized,
    @Default(false) bool fetching,
    @Default(false) bool internet,
    @Default(false) bool empty,
    @Default(false) bool timeout,
    @Default(false) bool error,
    //paginated
    @Default(0) int page,
    @Default(0) int limit,
    @Default(0) int total,
    // properties
    @Default([]) List<Datum> properties,
  }) = _PropertyContractState;

  static PropertyContractState get initialState => const PropertyContractState(
        initialized: false,
        fetching: false,
        internet: false,
        empty: false,
        timeout: false,
        error: false,
        page: 0,
        limit: 0,
        total: 0,
        properties: [],
      );
}
