// DAO == Data Access Objects
//Here we got the connection between our app and our database

import 'package:roadize/logic/models/customer.dart';
import 'package:roadize/logic/models/mysql.dart';

class DAO {
  Mysql db;

  DAO() : db = Mysql();

  Future<List<Customer>> getCustomers() async {
    List<Customer> result = [];
    db.getConnection().then((conn) {
      String sql = 'select * from company.customer;';
      conn.query(sql).then((results) {
        for (var row in results) {
          result.add(
              Customer(row[1], row[2], row[3], row[4], row[5], id: row[0]));
        }
      });
      conn.close();
    });
    return result;
  }

  Future<void> insertCustomer(Customer customer) async {
    db.getConnection().then((conn) {
      String sql =
          'insert into company.customer (username, name, lastname, mail, password) value (?, ?, ?, ?, ?);';
      conn.query(sql, [
        customer.username,
        customer.mail,
        customer.lastname,
        customer.mail,
        customer.hash,
      ]).then((result) {
        print('Inserted customer.');
      }, onError: () {
        print('Cannot insert the customer.');
      });
      conn.close();
    });
  }
}
