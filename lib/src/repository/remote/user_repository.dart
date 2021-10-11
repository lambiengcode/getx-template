import 'package:get_boilerplate/src/models/user_model.dart';

class UserRepository {
  Map<String, dynamic> fakeProfile = {
    'id': 'lambiengcode',
    'username': 'lambiengcode',
    'age': 21,
  };

  Future<UserModel> getMyProfile() async {
    await Future.delayed(Duration(seconds: 1), () async {});
    return UserModel.fromMap(fakeProfile);
  }

  Future<UserModel> editMyProfile({
    required String username,
    required int age,
  }) async {
    await Future.delayed(Duration(seconds: 1), () async {});
    fakeProfile['username'] = username;
    fakeProfile['age'] = age;
    return UserModel.fromMap(fakeProfile);
  }
}
