import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_success.freezed.dart';

@freezed
class PropertySuccess with _$PropertySuccess {
  const factory PropertySuccess.created() = _UserNotFound;
  const factory PropertySuccess.ok() = _Network;
}
