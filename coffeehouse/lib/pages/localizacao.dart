import '/domain/cafes.dart';
import 'package:coffeehouse/data/BD.dart';
import 'package:coffeehouse/pages/recomendados_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffeehouse/widget/card_cafe_recomendado.dart';

class Localizacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://png.pngtree.com/png-clipart/20190314/ourlarge/pngtree-planar-cartoon-street-view-cafe-shop-vendor-elements-png-image_851715.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: const Color(0XFF573629).withOpacity(0.50),
                ),
              ],
            ),
            padding: EdgeInsets.all(140),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: const Color(0XFF573629).withOpacity(0.50),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "COFFEE HOUSE",
                      style: TextStyle(
                        color: const Color(0XFF573629),
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(width: 35),
                    Text(
                      'N° 90',
                      style: TextStyle(
                        color: const Color(0XFF573629),
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'R. Delmiro Gouveia, ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Arapiraca - AL',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Abre as: ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '8h a.m.',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Fecha as: ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '8h00m p.m.',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.only(
              top: 20,
              bottom: 25,
              left: 16,
              right: 16,
            ),
          ),
        ],
      ),
    );
  }
}