import 'package:flutterdarttrungtin/entity/Account.dart';

class AccountModel {
  List<Account> findAll() {
    return [
      Account(username: "Pham Ngoc", password: "2304", fullname: "Name 1"),
      Account(username: "Thế Ngọc", password: "1234", fullname: "Name 2"),
      Account(username: "Trần Ngọc", password: "5231", fullname: "Name 3"),
    ];
  }

  bool login(String username, String password) {
    return findAll()
        .where((account) =>
            account.username == username && account.password == password)
        .isNotEmpty;
  }
}
