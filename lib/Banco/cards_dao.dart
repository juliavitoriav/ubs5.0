

import 'package:pmobp/Domain/Cards.dart';
import 'package:pmobp/Domain/phones.dart';
import 'package:pmobp/Domain/user.dart';
import 'package:pmobp/Domain/var_ubs.dart';
import 'package:sqflite/sqflite.dart';

import 'bd_helper.dart';

class CardsDao {
  Future<List<Cards>> listarPacotes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM package;';
    var result = await db.rawQuery(sql);

    List<Cards> lista = <Cards>[];
    for (var json in result) {
  
      Cards cards = Cards.fromJson(json);
      lista.add(cards);
    }

    return lista;
  }
}


class ListaDao {
  Future<List<Phones>> listarTelefones() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sqlPhone = 'SELECT * FROM package2;';
    var result = await db.rawQuery(sqlPhone);

    List<Phones> lista = <Phones>[];
    for (var json in result) {
      Phones ubsPhone = Phones.fromJson(json);
      lista.add(ubsPhone);
    }

    return lista;
  }
}

class UbsDao {

  Future<List<VarUbs>> listarUbs() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sqlUbs = 'SELECT * FROM package3;';
    var result = await db.rawQuery(sqlUbs);

    List<VarUbs> lista = <VarUbs>[];
    for (var json in result) {
      VarUbs ubs = VarUbs.fromJson(json);
      lista.add(ubs);
    }

    return lista;
  }
}

listaUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sqlLogin = 'SELECT * FROM login;';
    var result = await db.rawQuery(sqlLogin);

    List<User> lista = <User>[];
    for (var json in result) {
      User user = User.fromJson(json);
      lista.add(user);
    }

    return lista;
  }


