import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/service.enum.dart';
import 'new_contract_state.dart';

final newContractProvider =
    Provider.state<NewContractController, NewContractState>(
  (_) => NewContractController(),
);

class NewContractController extends StateNotifier<NewContractState> {
  NewContractController() : super(NewContractState.initialState);

  PageController? get stepperContractController =>
      state.stepperContractController;
  List<XFile> get gallery => state.galleryImages;
  String get nextDoneTxt => state.nextDoneTxt;
  List<bool> get services => state.services;

  void changeServiceValue(ServiceType serviceType) {
    List<bool> servicesTmp = List<bool>.from(services);
    servicesTmp[serviceType.index] = !servicesTmp[serviceType.index];
    onlyUpdate(
      state = state.copyWith(
        services: servicesTmp,
      ),
    );
  }

  void onChangeTxtByStepper(int page) {
    if (page == 0) {
      onlyUpdate(
        state = state.copyWith(
          nextDoneTxt: 'Siguiente',
        ),
      );
    } else if (page == 1) {
      onlyUpdate(
        state = state.copyWith(
          nextDoneTxt: 'Crear Propiedad',
        ),
      );
    }
  }

  void changeStepper() {
    const duration = Duration(milliseconds: 500);
    const curve = Curves.ease;
    final page = stepperContractController!.page;
    if (page == 1.0) {
    } else {
      stepperContractController!.nextPage(
        duration: duration,
        curve: curve,
      );
    }
  }

  void addAllImage(List<XFile> images) {
    List<XFile> galleryImagesTmp = List<XFile>.from(state.galleryImages);
    galleryImagesTmp.addAll(images);
    onlyUpdate(
      state = state.copyWith(
        galleryImages: galleryImagesTmp,
      ),
    );
  }
}
