import 'package:flutter/material.dart';
import 'package:coffeehouse/domain/polly.dart';
import 'package:coffeehouse/domain/polly.dart';

class CafeCard extends StatefulWidget {
  final Polly polly;
  const CafeCard({super.key, required this.polly});

  @override
  State<CafeCard> createState() => _CafeCardState();
}

class _CafeCardState extends State<CafeCard> {
  @override
  Widget build(BuildContext context) {
    return buildContent(widget.polly);
  }

  Widget buildContent(Polly polly) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(image: NetworkImage('${polly.foto}'))),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '${polly.nome}',
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${polly.aux}',
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text("${polly.volume}ml",
                      style: const TextStyle(fontSize: 18)),
                ),
                Text("R\$${polly.preco}", style: const TextStyle(fontSize: 24)),
              ],
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text('${polly.ingredientes}',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w300)),
          ),
        ]),
        buildDivider()
      ],
    );
  }

  buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 25,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0XFFB7794B)),
      ),
    );
  }
}
