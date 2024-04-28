import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/new_contract_data.dart';

part 'new_contract_state.freezed.dart';

@freezed
class NewContractState with _$NewContractState {
  factory NewContractState.loading() = _NewContractLoadingState;
  factory NewContractState.failed() = _NewContractFailedState;
  factory NewContractState.loaded(
    int page,
    LandLordHouseData landLordHouseData,
  ) = _NewContractLoadedState;
}
