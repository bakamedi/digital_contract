// ignore_for_file: library_prefixes

import 'package:dio/dio.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'data/data_source/services/auth_service.dart';
import 'data/data_source/services/property_service.dart';
import 'data/helpers/device_util_helper.dart';
import 'data/http_helper.dart';
import 'data/repositories_impl/auth_repository_impl.dart';
import 'data/repositories_impl/device_utils_repository_impl.dart';
import 'data/repositories_impl/property_repository_impl.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/device_utils_repository.dart';
import 'domain/repositories/property_repository.dart';

const httpDuration = Duration(
  seconds: 30,
);

final _dio = Dio(
  BaseOptions(
    baseUrl: 'http://192.168.100.173:3000/v1/api/', // depa
    connectTimeout: httpDuration,
    receiveTimeout: httpDuration,
    sendTimeout: httpDuration,
  ),
);

final _httpProvider = Provider(
  (ref) => HttpHelper(
    dio: _dio,
  ),
);

// Secure Storage

const aO = AndroidOptions(
  encryptedSharedPreferences: true,
  resetOnError: true,
);
// Crea la instancia del [FlutterSecureStorage]
const storage = FlutterSecureStorage(
  aOptions: aO,
);

final _deviceUtil = Provider(
  (ref) => DeviceUtilHelper(
    secureStorage: storage,
  ),
);

// Services

final authService = Provider(
  (ref) => AuthService(
    http: _httpProvider.read(),
  ),
);

final _propertyService = Provider(
  (ref) => PropertyService(
    http: _httpProvider.read(),
    deviceUtilHelper: _deviceUtil.read(),
  ),
);

class Repositories {
  Repositories._();

  static final auth = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(
      authService: authService.read(),
      deviceUtilHelper: _deviceUtil.read(),
    ),
  );

  static final deviceUtil = Provider<DeviceUtilsRepository>(
    (ref) => DeviceUtilsRepositoryImpl(
      deviceUtilHelper: _deviceUtil.read(),
    ),
  );

  static final propertyRep = Provider<PropertyRepository>(
    (ref) => PropertyRepositoryImpl(
      propertyService: _propertyService.read(),
    ),
  );
}
