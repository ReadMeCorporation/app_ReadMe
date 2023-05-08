class User {

  int id;
  String username;
  String role;
  int isMembership;
  int isAutoPayment;

  User({
    required this.id,
    required this.username,
    required this.role,
    required this.isMembership,
    required this.isAutoPayment,
  });


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'role': role,
      'isMembership': isMembership,
      'isAutoPayment': isAutoPayment,
    };
  }

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      isMembership: json['isMembership'] as bool ? 1 : 0,
      isAutoPayment: json['isAutoPayment'] as bool ? 1 : 0,
    );
  }
}

