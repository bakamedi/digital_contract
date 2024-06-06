import 'package:flutter_meedu/notifiers.dart'; // import the StateNotifer class
import 'package:flutter_meedu/providers.dart';
import 'package:image_picker/image_picker.dart';

import 'new_contract_state.dart';

final newContractProvider =
    Provider.state<NewContractController, NewContractState>(
  (_) => NewContractController(),
);

class NewContractController extends StateNotifier<NewContractState> {
  NewContractController() : super(NewContractState.initialState);

  List<XFile> get gallery => state.galleryImages;

  void addAllImage(List<XFile> images) {
    List<XFile> galleryImagesTmp = [...state.galleryImages];
    galleryImagesTmp.addAll(images);
    onlyUpdate(
      state = state.copyWith(
        galleryImages: galleryImagesTmp,
      ),
    );
  }
}
