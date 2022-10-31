import 'package:coffeehouse/domain/cafes.dart';

class BD {
  static List<Cafes> lista = [
    Cafes(
        imagem: 'https://www.anamariabrogui.com.br/assets/uploads/receitas/fotos/usuario-3235-18a45e40b548a7ecbb5448c6c891a55f.jpg',
        cafe: 'Capuccino',
        preco: 10),
    Cafes(
        imagem: 'https://www.nespresso.com/ncp/res/uploads/recipes/nespresso-recipes-Latte-Macchiato.jpg',
        cafe: 'Capuccino',
        preco: 10),
    Cafes(
        imagem: 'https://1.bp.blogspot.com/-sSKibBwIWnQ/X95hxqpp32I/AAAAAAAAAV0/CnNPT19fmaUkOkdsyJwPyWOjxIzzguKygCLcBGAsYHQ/s650/xicara%2Bde%2Bcaf%25C3%25A9%2Bexpresso.png',
        cafe: 'Capuccino',
        preco: 12),
  ];

  static Future<List<Cafes>> getValues() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista;
  }
}