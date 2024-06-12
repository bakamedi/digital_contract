import '../failures/failure.dart';
import '../models/property/dto/property_dto.dart';
import '../models/property/response/property_model.dart';
import '../success/property_success.dart';
import '../typedefs.dart';

abstract class PropertyRepository {
  FutureEither<Failure, PropertySuccess> create(
    PropertyDto propertyDto,
  );

  FutureEither<Failure, PropertyModel> get({
    int page = 1,
    int limit = 10,
  });
}
