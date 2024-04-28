import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_state.freezed.dart';

@freezed
class ContractState with _$ContractState {
  const ContractState._();
  const factory ContractState({
    File? signatureLandLordFile,
    File? signatureLesseFile,
  }) = _ContractState;
  static ContractState get initialState => const ContractState();
}
