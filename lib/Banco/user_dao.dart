
import 'package:pmobp/Banco/bd_helper.dart';
import 'package:pmobp/Domain/user.dart';
import 'package:sqflite/sqlite_api.dart';

class UserDao {
  autenticar({required User user}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql =
        'SELECT * FROM package5 WHERE username =? AND email =? AND password =?;';
    var result =
    await db.rawQuery(sql, [user.username, user.email, user.password]);
    return result.isNotEmpty;
  }

  listaUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM package5;';
    var result = await db.rawQuery(sql);

    List<User> lista = <User>[];
    for (var json in result) {
      User user = User.fromJson(json);
      lista.add(user);
    }

    return lista;
  }
}
