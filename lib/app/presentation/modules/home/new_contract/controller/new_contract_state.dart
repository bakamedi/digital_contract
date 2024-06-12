import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'new_contract_state.freezed.dart';

@freezed
class NewContractState with _$NewContractState {
  const NewContractState._();
  const factory NewContractState({
    // user
    @Default('') String landLordName,
    @Default('') String landLordNui,
    @Default('') String landLordPhone,
    // property
    @Default('') String price,
    @Default('') String city,
    @Default(0) int rooms,
    @Default(0) int bathRooms,
    @Default(0.0) double lat,
    @Default(0.0) double lng,
    @Default('') String address,
    @Default('') String province,
    @Default('') String serviceWaterPrice,
    @Default('') String serviceElectricityPrice,
    @Default('') String serviceInternetPrice,
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
