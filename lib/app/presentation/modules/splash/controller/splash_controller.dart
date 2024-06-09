import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart'; // import the StateNotifer class
import 'package:flutter_meedu/providers.dart';
import 'package:go_router/go_router.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/repositories/device_utils_repository.dart';
import '../../../global/extensions/strings_ext.dart';

import '../../../router/routes/home_route.dart';
import '../../../router/routes/sign_in_route.dart';
import 'splash_state.dart';

final splashProvider = Provider.state<SplashController, SplashState>(
  (_) => SplashController(
    SplashState.initialState,
    deviceUtilsRepository: Repositories.deviceUtil.read(),
  ),
);

class SplashController extends StateNotifier<SplashState> {
  final DeviceUtilsRepository _deviceUtilsRepository;

  SplashController(
    super.initialState, {
    required DeviceUtilsRepository deviceUtilsRepository,
  }) : _deviceUtilsRepository = deviceUtilsRepository {
    isJwtToken();
  }

  void init(BuildContext context) {
    onlyUpdate(
      state = state.copyWith(context: context),
    );
  }

  Future<void> isJwtToken() async {
    final accessToken = await _deviceUtilsRepository.accessToken;
    if (accessToken.isJwtToken && accessToken.isNotEmpty) {
      state.context?.pushReplacementNamed(
        HomeRoute.path,
      );
    } else {
      state.context?.pushReplacementNamed(SignInRoute.path);
    }
  }
}
