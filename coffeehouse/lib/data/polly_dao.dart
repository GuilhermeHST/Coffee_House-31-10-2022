import 'package:coffeehouse/data/bd_helper.dart';
import 'package:coffeehouse/domain/polly.dart';
import 'package:sqflite/sqflite.dart';

class PollyDao{
  Future<List<Polly>> listarCafes() async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM polly;';
    var result = await db.rawQuery(sql);
    print(sql);
    
    List<Polly> lista = <Polly>[];
    for(var json in result){
      print(json);
      Polly cafe = Polly.fromJson(json);
      lista.add(cafe);
    }
    
    return lista;
  }
}
