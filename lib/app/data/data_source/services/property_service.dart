import '../../../core/either.dart';
import '../../../domain/failures/failure.dart';
import '../../../domain/models/property/dto/property_dto.dart';
import '../../../domain/success/property_success.dart';
import '../../helpers/device_util_helper.dart';
import '../../http_helper.dart';
import '../../http_method.dart';

import 'dart:developer' as developer;

class PropertyService {
  final HttpHelper _http;
  final DeviceUtilHelper _deviceUtilHelper;

  PropertyService({
    required HttpHelper http,
    required deviceUtilHelper,
  })  : _http = http,
        _deviceUtilHelper = deviceUtilHelper;

  Future<Either<Failure, PropertySuccess>> create(
    PropertyDto propertyDto,
  ) async {
    final accessToken = await _deviceUtilHelper.token;
    final result = await _http.request(
      'property/',
      method: HttpMethod.POST,
      bearerToken: accessToken,
      data: propertyDtoToJson(propertyDto),
    );

    return result.when(
      success: (statusCode, data) {
        developer.log(data, name: 'property-success');
        return const Either.right(
          PropertySuccess.created(),
        );
      },
      networkError: (stackTrace) {
        developer.log(
          stackTrace.toString(),
          name: 'property-networkError',
        );
        return const Either.left(
          Failure.network(),
        );
      },
      unhandledError: (exception, stackTrace) {
        developer.log(
          stackTrace.toString(),
          name: 'property-unhandledError',
        );

        return const Either.left(
          Failure.unknown(),
        );
      },
    );
  }
}
