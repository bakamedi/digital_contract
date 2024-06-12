import '../failures/failure.dart';
import '../models/property/dto/property_dto.dart';
import '../success/property_success.dart';
import '../typedefs.dart';

abstract class PropertyRepository {
  FutureEither<Failure, PropertySuccess> create(
    PropertyDto propertyDto,
  );
}
