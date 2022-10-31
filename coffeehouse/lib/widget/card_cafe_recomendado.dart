import 'package:coffeehouse/domain/sessao_cafe.dart';
import 'package:flutter/material.dart';
import '/domain/cafes.dart';

class CardCafeRecomendado extends StatelessWidget {
  final Cafes cafeRecomendado;

  const CardCafeRecomendado({
    Key? key,
    required this.cafeRecomendado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 16
            ),
            padding: EdgeInsets.all(70),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(cafeRecomendado.imagem),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 16
            ),
            padding: EdgeInsets.all(27.5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF2b2117).withOpacity(0.08),
                  blurRadius: 50,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  cafeRecomendado.cafe,
                  style: TextStyle(
                    color: const Color(0XFF573629),
                    fontSize: 18,
                  ),
                ),
                Text(
                  '\nR\$ ${cafeRecomendado.preco},00',
                  style: TextStyle(
                    color: const Color(0xFFB7794B),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}