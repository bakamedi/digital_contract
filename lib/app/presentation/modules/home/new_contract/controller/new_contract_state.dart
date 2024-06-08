import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'new_contract_state.freezed.dart';

@freezed
class NewContractState with _$NewContractState {
  const NewContractState._();
  const factory NewContractState({
    @Default('') String city,
    @Default('') String location,
    @Default('') String phone,
    @Default('') String value,
    @Default([true, false, false]) List<bool> services,
    PageController? stepperContractController,
    @Default('Siguiente') String nextDoneTxt,
    @Default([]) List<XFile> galleryImages,
  }) = _NewContractState;
  static NewContractState get initialState => NewContractState(
        nextDoneTxt: 'Siguiente',
        stepperContractController: PageController(
          initialPage: 0,
        ),
      );
}
