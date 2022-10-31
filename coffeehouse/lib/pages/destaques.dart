import 'package:coffeehouse/data/BD.dart';
import 'package:coffeehouse/data/cafe_dao.dart';
import 'package:coffeehouse/domain/cafes.dart';
import 'package:coffeehouse/domain/cafes.dart';
import 'package:coffeehouse/data/BD.dart';
import 'package:coffeehouse/domain/sessao_cafe.dart';
import 'package:coffeehouse/pages/recomendados_page.dart';
import 'package:coffeehouse/widget/card_sessao_cafe.dart';
import 'package:flutter/material.dart';
import 'package:coffeehouse/widget/card_cafe_recomendado.dart';
import 'package:flutter/material.dart';
import 'package:coffeehouse/pages/cafe_do_mes_page.dart';
import 'package:coffeehouse/pages/localizacao.dart';

import '../data/mes_dao.dart';


class DestaquesPage extends StatefulWidget {
  const DestaquesPage({Key? key}) : super(key: key);

  @override
  State<DestaquesPage> createState() => _DestaquesPageState();
}

class _DestaquesPageState extends State<DestaquesPage> {
  List<Cafes> listaCafes = BD.lista;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder<List<Cafes>>(
        future: CafeDao().listarCafes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Cafes> lista = snapshot.data ?? [];

            return ListView(
              children: [
                buildContainerCafe('https://intokildare.ie/wp-content/uploads/2018/01/pablo-1.png'),
                buildSizedBox(),
                buildHeadCards('Recomendados'),
                buildListViewBuilder(lista),
                buildSizedBox(),
                buildHeadCards('Café do Mês'),
                buildSizedBox(),
                buildHeadCards('Localização'),
                Localizacao(),
              ],
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }


  buildListViewBuilder(List<Cafes> listaCafes) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardCafeRecomendado(cafeRecomendado: listaCafes[0]),
          CardCafeRecomendado(cafeRecomendado: listaCafes[1]),
          CardCafeRecomendado(cafeRecomendado: listaCafes[2]),
        ],
      ),
    );
  }

  buildContainerCafe(imagem) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imagem),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
      ),
      padding: EdgeInsets.all(80),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2b2117),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'COFFE HOUSE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  buildSizedBox() {
    return const SizedBox(height: 8);
  }

  buildHeadCards(texto) {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  texto.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0XFF573629),
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(width: 140),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return const RecomendadosPage();
                          }
                      ),
                    );
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildBoxDecoration(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            'hellou'
          ),
        ],
      ),
    );
  }

  buildContainerCafedoMes(imagem){
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      child: Wrap(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.network(
              imagem,
              fit: BoxFit.fill,
            ),
          ),
          buildBoxDecoration(),
        ],
      ),
    );
  }
}
