import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../../../dependency_injection.dart.dart';
import '../../../../../../domain/models/property/response/property_model.dart';
import '../../../../../../domain/repositories/property_repository.dart';
import 'property_contract_state.dart';

final propertyContractProvider =
    Provider.state<PropertyContractController, PropertyContractState>(
  (_) => PropertyContractController(
    PropertyContractState.initialState,
    propertyRepository: Repositories.propertyRep.read(),
  ),
);

class PropertyContractController extends StateNotifier<PropertyContractState> {
  final PropertyRepository _propertyRepository;

  PropertyContractController(
    super.initialState, {
    required PropertyRepository propertyRepository,
  }) : _propertyRepository = propertyRepository {
    load(1, 10);
  }

  List<Datum> get properties => state.properties;

  void load(
    int page,
    int limit,
  ) async {
    if (state.page > 0 && state.total < state.limit) {
      return;
    }
    if (state.fetching) {
      return;
    }
    final result = await _propertyRepository.get(
      page: page,
      limit: limit,
    );
    result.when(
      left: (failure) {},
      right: (property) {
        print(property);
        final properties = property.data ?? [];
        final prevProperties = List<Datum>.from(
          state.properties,
        );
        onlyUpdate(
          state = state.copyWith(
            page: int.parse(property.page ?? '0'),
            limit: int.parse(property.limit ?? '0'),
            total: property.total ?? 0,
            properties: [
              ...prevProperties,
              ...properties,
            ],
          ),
        );
      },
    );
  }
}
