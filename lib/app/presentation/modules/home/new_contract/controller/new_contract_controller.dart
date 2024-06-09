import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/service.enum.dart';
import '../utils/update_field_property.dart';
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

  void onChangeField(
    UpdateFieldProperty field,
    String? value, {
    LatLng latLng = const LatLng(0.0, 0.0),
  }) {
    switch (field) {
      case UpdateFieldProperty.serviceWaterPrice:
        onlyUpdate(
          state = state.copyWith(
            serviceWaterPrice: value ?? '',
          ),
        );
        break;
      case UpdateFieldProperty.serviceElectricityPrice:
        onlyUpdate(
          state = state.copyWith(
            serviceElectricityPrice: value ?? '',
          ),
        );
        break;
      case UpdateFieldProperty.serviceInternetPrice:
        onlyUpdate(
          state = state.copyWith(
            serviceInternetPrice: value ?? '',
          ),
        );
        break;
      case UpdateFieldProperty.city:
        onlyUpdate(
          state = state.copyWith(
            city: value ?? '',
          ),
        );
        break;
      case UpdateFieldProperty.address:
        onlyUpdate(
          state = state.copyWith(
            address: value ?? '',
          ),
        );
        break;
      case UpdateFieldProperty.latLng:
        onlyUpdate(
          state = state.copyWith(
            lat: latLng.latitude,
            lng: latLng.longitude,
          ),
        );
        break;
    }
  }
}
