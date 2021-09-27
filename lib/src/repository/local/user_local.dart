import 'package:get_storage/get_storage.dart';

class UserLocal {
  final _getStorage = GetStorage();
  final storageKey = 'token';

  String getAccessToken() {
    return _getStorage.read(storageKey) ?? '';
  }

  void saveAccessToken(String accessToken) {
    _getStorage.write(storageKey, accessToken);
  }
}
