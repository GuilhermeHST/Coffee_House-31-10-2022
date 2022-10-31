import '../data/cafe_dao.dart';
import '/domain/cafes.dart';
import 'package:coffeehouse/data/BD.dart';
import 'package:coffeehouse/pages/recomendados_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffeehouse/widget/card_cafe_recomendado.dart';

class CafeDoMes extends StatelessWidget {
  final Cafes cafeDoMes;

  const CafeDoMes({
    Key? key,
    required this.cafeDoMes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 100.0,
                  bottom: 100.0,
                ),
                child: Column(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(left: 5.0, bottom: 10.0, right: 10.0),
                      child: Column(
                        children: [
                          buildBoxes(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: const Color(0XFF573629).withOpacity(
                        0.50),
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(
                    cafeDoMes.imagem,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  buildBoxes() {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: const Color(0XFF573629).withOpacity(0.50),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Icon(
              Icons.coffee,
              size: 25,
              color: const Color(0XFF573629),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: const Color(0XFF573629).withOpacity(0.50),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Icon(
              Icons.shopping_bag,
              size: 25,
              color: const Color(0XFF573629),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: const Color(0XFF573629).withOpacity(0.50),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Icon(
              Icons.menu_book,
              size: 25,
              color: const Color(0XFF573629),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: const Color(0XFF573629).withOpacity(0.50),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Icon(
              Icons.coffee,
              size: 25,
              color: const Color(0XFF573629),
            ),
          ),
        ],
      ),
    );
  }
}