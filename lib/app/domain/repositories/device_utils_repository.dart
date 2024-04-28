import 'dart:io';
import 'dart:typed_data';

abstract class DeviceUtilsRepository {
  Future<String> get accessToken;
  Future<void> setAccessToken(String accessToken);

  Future<String> getImagePath(String fileName);

  Future<File> getFile(String fileName);

  Future<void> saveImage(ByteData byteDat, String fileName);
}
