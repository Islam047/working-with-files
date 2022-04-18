import 'dart:convert';

class User {
  late String firstName;
  late String lastName;
  late String email;
  late int password;

  User(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
    return map;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'firstName: $firstName lastName: $lastName email: $email password: $password';
  }
}

class UserData {
  static List l1 = [];

  void getInfo() {
    for (var item in l1) {
      print(item);
    }
  }

  void add(User user) {
    l1.add(user.toJson());
  }
}
