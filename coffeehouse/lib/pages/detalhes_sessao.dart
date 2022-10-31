import '/domain/sessao_cafe.dart';
import 'package:flutter/material.dart';

class DetalhesSessao extends StatefulWidget {
  final SessaoCafe sessaoCafe;

  const DetalhesSessao({Key? key, required this.sessaoCafe}) : super(key: key);

  @override
  _DetalhesSessaoState createState() => _DetalhesSessaoState();
}

class _DetalhesSessaoState extends State<DetalhesSessao> {
  SessaoCafe get pacote => widget.sessaoCafe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        Image.network(pacote.imagem),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              buildText(text: pacote.titulo, fontSize: 21, isBold: true),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }

  Text buildText({
    required String text,
    double fontSize = 14,
    bool isBold = false,
    Color color = Colors.black,
  }) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: true ? FontWeight.w600 : null,
      ),
    );
  }
}