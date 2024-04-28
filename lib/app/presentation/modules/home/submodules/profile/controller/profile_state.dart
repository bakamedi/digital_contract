import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    File? signatureFile,
  }) = _ProfileState;
  static ProfileState get initialState => const ProfileState();
}
