import 'package:flutter/material.dart';
import '../utilitarios/funcoes.dart';
import '../utilitarios/constantes.dart';

class TelaDePesquisa extends StatefulWidget {
  const TelaDePesquisa({Key? key}) : super(key: key);

  @override
  State<TelaDePesquisa> createState() => _TelaDePesquisaState();
}

class _TelaDePesquisaState extends State<TelaDePesquisa> {
  String acordepesquisado = '';

  // Widget tratandoErro(acorde) {
  //   try {
  //     return Text(acorde);
  //   } catch (e) {
  //     return Text('Acorde Não encontrado, Erro: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pesquisa de Acordes'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: kEstiloBarraDePesquisa,
                onChanged: (String pesquisando) {
                  setState(() {
                    acordepesquisado = pesquisando;
                    acordepesquisado = kTratandoEnarmonia(acordepesquisado);
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  acordepesquisado,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
