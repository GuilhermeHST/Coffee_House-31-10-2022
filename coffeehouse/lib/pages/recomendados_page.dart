import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomendadosPage extends StatefulWidget {
  const RecomendadosPage({Key? key}) : super(key: key);

  @override
  State<RecomendadosPage> createState() => _RecomendadosPageState();
}

class _RecomendadosPageState extends State<RecomendadosPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'RECOMENDADOS',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
