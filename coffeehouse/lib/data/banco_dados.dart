import 'package:coffeehouse/domain/cafes.dart';
import 'package:coffeehouse/domain/sessao_cafe.dart';

class BancoDados {
  static List<SessaoCafe> lista = [
    SessaoCafe(
      imagem: 'https://img.olhardigital.com.br/wp-content/uploads/2021/07/Cafe-2-695x500.jpg',
      titulo: 'CATÁLOGO',
    ),
    SessaoCafe(
      imagem: 'https://images.tcdn.com.br/img/editor/up/738124/Cafe.jpg',
      titulo: 'PAGAMENTO',
    ),
    SessaoCafe(
      imagem: 'https://media.istockphoto.com/photos/cup-of-espresso-with-coffee-beans-picture-id1177900338?k=20&m=1177900338&s=612x612&w=0&h=rwLAoPzPiKdSbcdBFs4-TTt5O1Qpe0EFVY5KRqRPKmI=',
      titulo: 'CARRINHO DE COMPRAS',
    ),
    SessaoCafe(
      imagem: 'https://radioriodejaneiro.digital/wp-content/uploads/2019/08/cafe.jpg',
      titulo: 'SOBRE',
    ),
  ];



  static Future<List<SessaoCafe>> getValues() async {
    await Future.delayed(const Duration(seconds: 5));
    return lista;
  }
}