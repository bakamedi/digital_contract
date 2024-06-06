import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'new_contract_state.freezed.dart';

@freezed
class NewContractState with _$NewContractState {
  const NewContractState._();
  const factory NewContractState({
    @Default([]) List<XFile> galleryImages,
  }) = _NewContractState;
  static NewContractState get initialState => const NewContractState();
}
