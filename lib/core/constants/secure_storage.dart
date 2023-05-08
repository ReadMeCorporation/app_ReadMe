import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage_enum.dart';

class SecureStorage {
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static void setKey(SecureStorageEnum enums, String value) {
    _secureStorage.write(key: enums.name, value: value);
  }

  static Future<String?> get(SecureStorageEnum enums) async{
    return _secureStorage.read(key: enums.name);
  }

  static Future<void> deleteKey (SecureStorageEnum enums) async{
    await _secureStorage.delete(key: enums.name);
  }

  static Future<void> clear () async{
    await _secureStorage.deleteAll();
  }
}