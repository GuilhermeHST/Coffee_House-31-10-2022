import '/domain/sessao_cafe.dart';
import '/pages/detalhes_sessao.dart';
import 'package:flutter/material.dart';

class CardSessaoCafe extends StatefulWidget {
  final SessaoCafe sessaoCafe;

  const CardSessaoCafe({
    Key? key,
    required this.sessaoCafe,
  }) : super(key: key);

  @override
  _CardSessaoCafeState createState() => _CardSessaoCafeState();
}

class _CardSessaoCafeState extends State<CardSessaoCafe> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetalhesSessao(
                sessaoCafe: widget.sessaoCafe,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.sessaoCafe.titulo,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573629),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          child: Image.network(widget.sessaoCafe.imagem),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, top: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
        ),
      ],
    );
  }
}