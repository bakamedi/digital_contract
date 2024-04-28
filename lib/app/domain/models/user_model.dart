import 'package:freezed_annotation/freezed_annotation.dart';

import '../typedefs.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String fullName,
    required String email,
    String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Json json) => _$UserModelFromJson(json);
}
