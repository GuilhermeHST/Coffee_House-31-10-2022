import 'package:coffeehouse/data/bd_helper.dart';
import 'package:coffeehouse/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDao{
  salvarUser({required User user}) async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('USER', user.toJson());
  }

  Future<bool> autenticar({required String user, required String password}) async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user WHERE username = ? AND password = ?;';
    var result = await db.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  listaUsers() async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    var result = await db.rawQuery(sql);

    List<User> lista = <User>[];
    for(var json in result){
     User user = User.fromJson(json);
     lista.add(user);
    }

    return lista;
  }
}