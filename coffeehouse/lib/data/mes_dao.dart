import 'package:coffeehouse/data/bd_helper.dart';
import 'package:coffeehouse/domain/cafes.dart';
import 'package:sqflite/sqflite.dart';

class MesDao{
  Future<List<Cafes>> listarCafes() async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM mes;';
    var result = await db.rawQuery(sql);
    print(sql);
    
    List<Cafes> lista = <Cafes>[];
    for(var json in result){
      print(json);
      Cafes cafe = Cafes.fromJson(json);
      lista.add(cafe);
    }
    
    return lista;
  }
}
