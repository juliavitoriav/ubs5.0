class User {
  String? username;
  String? email;
  String? password;

  User({
    this.username,
    this.email,
    this.password,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  @override
  String toString() {
    return 'User{username: $username, email: $email, password: $password}';
  }
}