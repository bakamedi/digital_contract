// ignore_for_file: library_prefixes

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as pathApp;
import 'dart:developer' as developer;

import '../../domain/repositories/device_utils_repository.dart';
import '../helpers/device_util_helper.dart';

class DeviceUtilsRepositoryImpl implements DeviceUtilsRepository {
  final DeviceUtilHelper _deviceUtilHelper;

  DeviceUtilsRepositoryImpl({
    required DeviceUtilHelper deviceUtilHelper,
  }) : _deviceUtilHelper = deviceUtilHelper;

  @override
  Future<void> saveImage(ByteData byteData, String fileName) async {
    try {
      final platformDir = Platform.isAndroid
          ? await getTemporaryDirectory()
          : await getApplicationDocumentsDirectory();
      final filePath = '${pathApp.join(platformDir.path)}/$fileName.png';

      final pngBytes = byteData.buffer.asUint8List();

      final file = File(filePath);
      await file.writeAsBytes(pngBytes);
      if (file.existsSync()) {
        await _deviceUtilHelper.saveSignaturePath(filePath);
      }
    } catch (e) {
      developer.log(e.toString());
    }
  }

  @override
  Future<String> getImagePath(String fileName) async {
    try {
      final platformDir = Platform.isAndroid
          ? await getTemporaryDirectory()
          : await getApplicationDocumentsDirectory();
      return '${pathApp.join(platformDir.path)}/$fileName.png';
    } catch (e) {
      developer.log(e.toString());
      return '';
    }
  }

  @override
  Future<File> getFile(String fileName) async {
    final platformDir = Platform.isAndroid
        ? await getTemporaryDirectory()
        : await getApplicationDocumentsDirectory();
    final pathFile = '${pathApp.join(platformDir.path)}/$fileName.png';
    return File(pathFile);
  }

  @override
  Future<String> get accessToken async => await _deviceUtilHelper.token;

  @override
  Future<void> setAccessToken(String accessToken) async {
    await _deviceUtilHelper.saveToken(accessToken);
  }
}
