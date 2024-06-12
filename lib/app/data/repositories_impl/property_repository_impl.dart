import 'dart:developer' as developer;
import '../../domain/either.dart';

import 'package:digital_contract/app/domain/failures/failure.dart';

import 'package:digital_contract/app/domain/success/property_success.dart';

import 'package:digital_contract/app/domain/typedefs.dart';

import '../../domain/models/property/dto/property_dto.dart';
import '../../domain/repositories/property_repository.dart';
import '../data_source/services/property_service.dart';

class PropertyRepositoryImpl implements PropertyRepository {
  PropertyRepositoryImpl({
    required PropertyService propertyService,
  }) : _propertyService = propertyService;

  final PropertyService _propertyService;

  @override
  FutureEither<Failure, PropertySuccess> create(
    PropertyDto propertyDto,
  ) async {
    try {
      final result = await _propertyService.create(propertyDto);
      return result.when(
        left: (failure) => Either.left(failure),
        right: (token) async {
          return const Either.right(
            PropertySuccess.created(),
          );
        },
      );
    } catch (e) {
      developer.log(e.toString(), name: 'create-property');

      return const Either.left(
        Failure.unknown(),
      );
    }
  }
}
