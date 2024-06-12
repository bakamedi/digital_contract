import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../dependency_injection.dart.dart';
import '../../../../../domain/failures/failure.dart';
import '../../../../../domain/models/property/dto/property_dto.dart';
import '../../../../../domain/repositories/property_repository.dart';
import '../../../../../domain/success/property_success.dart';
import '../../../../../domain/typedefs.dart';
import '../../../../global/utils/money_currency.dart';
import '../utils/service.enum.dart';
import '../utils/update_field_property.dart';
import 'new_contract_state.dart';

import '../../../../../core/extensions/double_ext.dart';

final newContractProvider =
    Provider.state<NewContractController, NewContractState>(
  (_) => NewContractController(
    NewContractState.initialState,
    propertyRepository: Repositories.propertyRep.read(),
  ),
);

class NewContractController extends StateNotifier<NewContractState> {
  final PropertyRepository _propertyRepository;

  NewContractController(
    super.initialState, {
    required PropertyRepository propertyRepository,
  }) : _propertyRepository = propertyRepository;


  PageController? get stepperContractController =>
      state.stepperContractController;
  List<XFile> get gallery => state.galleryImages;
  String get nextDoneTxt => state.nextDoneTxt;
  List<bool> get services => state.services;
  String get landLordName => state.landLordName;
  String get landLordNui => state.landLordNui;
  String get landLordPhone => state.landLordPhone;
  double get propertyPrice => CurrencyMoneyUtil.formatAmountDouble(
        state.price,
      );
  String get city => state.city;
  int get rooms => state.rooms;
  int get bathRooms => state.bathRooms;
  double get lat => state.lat;
  double get lng => state.lng;
  String get address => state.address;
  String get province => state.province;
  double get serviceWaterPrice => CurrencyMoneyUtil.formatAmountDouble(
        state.serviceWaterPrice,
      );
  double get serviceElectricityPrice => CurrencyMoneyUtil.formatAmountDouble(
        state.serviceElectricityPrice,
      );
  double get serviceInternetPrice => CurrencyMoneyUtil.formatAmountDouble(
        state.serviceInternetPrice,
      );

  FutureEither<Failure, PropertySuccess> createProperty() async {
    return await _propertyRepository.create(
      _createPropertyDTO(),
    );
  }

  PropertyDto _createPropertyDTO() {
    return PropertyDto(
      address: address,
      rooms: rooms,
      bathrooms: bathRooms,
      price: propertyPrice,
      lat: lat,
      lng: lng,
      electricService: serviceElectricityPrice.isServiceEnabled,
      waterService: serviceElectricityPrice.isServiceEnabled,
      internetService: serviceInternetPrice.isServiceEnabled,
      electricServicePrice: serviceElectricityPrice,
      waterServicePrice: serviceWaterPrice,
      internetServicePrice: serviceInternetPrice,
    );
  }

  void loadLandLordData(
    String landLordName,
    String landLordNui,
    String landLordPhone,
  ) {
    onlyUpdate(
      state = state.copyWith(
        landLordName: landLordName,
        landLordNui: landLordNui,
        landLordPhone: landLordPhone,
      ),
    );
  }

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
    if (page == 0 || page == 1) {
      onlyUpdate(
        state = state.copyWith(
          nextDoneTxt: 'Siguiente',
        ),
      );
    } else if (page == 2) {
      onlyUpdate(
        state = state.copyWith(
          nextDoneTxt: 'Crear Propiedad',
        ),
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
      case UpdateFieldProperty.province:
        onlyUpdate(
          state = state.copyWith(
            province: value ?? '',
          ),
        );
        break;
      case UpdateFieldProperty.propertyPrice:
        onlyUpdate(
          state = state.copyWith(
            price: value ?? '',
          ),
        );
    }
  }
}
