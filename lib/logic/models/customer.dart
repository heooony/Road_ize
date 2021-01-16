import 'package:password/password.dart';

class Customer {
  int id;
  String username, name, lastname, mail, hash;
  PBKDF2 algorithm;

  Customer(this.username, this.name, this.lastname, this.mail, String password,
      {this.id}) {
    this.algorithm = PBKDF2();
    this.hash = Password.hash(password, this.algorithm);
  }
  Customer.def() {
    id = null;
    username = '';
    name = '';
    lastname = '';
    mail = '';
    hash = '';
    algorithm = PBKDF2();
  }

  passwordVerify(String password) {
    return Password.verify(password, this.hash);
  }

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
        json['username'] as String,
        json['name'] as String,
        json['lastname'] as String,
        json['male'] as String,
        json['hash'] as String,
        id: json['id'] as int);
  }

  toJson() {
    Map<String, dynamic> result = {};
    if (id != null) result.putIfAbsent('id', () => id);
    result.putIfAbsent('username', () => username);
    result.putIfAbsent('name', () => name);
    result.putIfAbsent('lastname', () => lastname);
    result.putIfAbsent('mail', () => mail);
    result.putIfAbsent('hash', () => hash);
  }
}
