import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:developer' as developer;

import '../../domain/models/auth/token_model.dart';
import 'global_names_storage.dart';

/// Clase para manipular los lso datos internos de la APP
/// usa [FlutterSecureStorage] para el storage
class DeviceUtilHelper {
  final FlutterSecureStorage _secureStorage;

  DeviceUtilHelper({
    required FlutterSecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  Future<String> get token async =>
      await _secureStorage.read(
        key: GlobalNameStorageKey.TOKEN,
      ) ??
      '';

  Future<String?> get devicePath async => await _secureStorage.read(
        key: GlobalNameStorageKey.DEVICE_PATH,
      );

  Future<String?> get signaturePath async => await _secureStorage.read(
        key: GlobalNameStorageKey.SIGNATURE_PATH,
      );

  Future<void> saveToken(String token) async {
    await _secureStorage.write(
      key: GlobalNameStorageKey.TOKEN,
      value: token,
    );
  }

  Future<void> saveUserData(TokenModel token) async {
    await _secureStorage.write(
      key: GlobalNameStorageKey.ID,
      value: token.data.id,
    );
    await _secureStorage.write(
      key: GlobalNameStorageKey.EMAIL,
      value: token.data.email,
    );
    await _secureStorage.write(
      key: GlobalNameStorageKey.TOKEN,
      value: token.data.token,
    );
  }

  Future<void> saveDevicePath(String devicePath) async {
    await _secureStorage.write(
      key: GlobalNameStorageKey.DEVICE_PATH,
      value: devicePath,
    );
  }

  Future<void> saveSignaturePath(String signaturePath) async {
    await _secureStorage.write(
      key: GlobalNameStorageKey.SIGNATURE_PATH,
      value: signaturePath,
    );
  }

  Future<void> clearData() async {
    try {
      await _secureStorage.delete(key: GlobalNameStorageKey.TOKEN);
      await _secureStorage.delete(key: GlobalNameStorageKey.DEVICE_PATH);
    } catch (e) {
      developer.log(e.toString());
    }
  }
}
