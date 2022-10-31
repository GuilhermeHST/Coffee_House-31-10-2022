import 'package:coffeehouse/domain/sessao_cafe.dart';
import 'package:coffeehouse/widget/card_sessao_cafe.dart';
import 'package:flutter/cupertino.dart';
import 'package:coffeehouse/data/banco_dados.dart';

class GridPacotes extends StatefulWidget {
  const GridPacotes({Key? key}) : super(key: key);

  @override
  State<GridPacotes> createState() => _GridPacotesState();
}

class _GridPacotesState extends State<GridPacotes> {
  List<SessaoCafe> listaCafes = BancoDados.lista;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.35),
          itemCount: listaCafes.length,
          itemBuilder: (context, index) {
            return CardSessaoCafe(sessaoCafe: listaCafes[index]);
          }),
    );
  }
}
