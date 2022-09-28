import 'package:flutter/material.dart';
import 'telas/Tela_de_pesquisa.dart';
import 'telas/tela_inicial.dart';

void main() {
  runApp(const AcordesApp());
}

class AcordesApp extends StatelessWidget {
  const AcordesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaDePesquisa(),
    );
  }
}
