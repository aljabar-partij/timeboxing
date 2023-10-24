import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String uid;
  final String username;
  final String avatarUrl;
  final String email;

  const User({
    required this.uid,
    required this.username,
    required this.avatarUrl,
    required this.email,
  });

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      uid: json['uid'],
      username: json['username'],
      avatarUrl: json['avatarUrl'] ?? '',
      email: json['email'],
    );
  }

  Map<String, dynamic> toJSON() {
    return {
      'uid': uid,
      'username': username,
      'avatarUrl': avatarUrl,
      'email': email,
    };
  }

  @override
  List<Object?> get props => [uid];
}
