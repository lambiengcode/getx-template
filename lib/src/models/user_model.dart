import 'dart:convert';

class UserModel {
  final String id;
  final String username;
  final int age;
  UserModel({
    required this.id,
    required this.username,
    required this.age,
  });

  UserModel copyWith({
    String? id,
    String? username,
    int? age,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'age': age,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      username: map['username'],
      age: map['age'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(id: $id, username: $username, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel && other.id == id && other.username == username && other.age == age;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ age.hashCode;
}
