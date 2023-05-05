class JoinReqDTO {
  final String idToken;

  JoinReqDTO({
    required this.idToken,
  });

  Map<String, dynamic> toJson() => {
    "password": idToken,
  };
}

class LoginReqDTO {
  final String username;
  final String jwt;

  LoginReqDTO({
    required this.username,
    required this.jwt
  });

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": jwt
  };
}
