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

  Widget mostrarImagemDinamica(acorde) {
    /// Verifica se o acorde pesquisado está na lista de todos os acordes
    /// Em caso afirmativo, mostra a imagem, já em caso negativo mostra um Text()
    if (kTodosOsAcordes.contains(acorde)) {
      return kMostrandoAcorde(acorde);
    } else if (acorde == '') {
      return Text(acorde);
    } else {
      return const Text('Acorde Não Encontrado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pesquisa de Acordes'),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.text,
                textCapitalization:
                    TextCapitalization.sentences, // Primeira letra maiúscula
                style: const TextStyle(color: Colors.black),
                decoration: kEstiloBarraDePesquisa,
                onChanged: (String pesquisando) {
                  // Input em tempo real
                  setState(() {
                    kMostrarImagem = true;
                    acordepesquisado = pesquisando;
                    acordepesquisado = kTratandoEnarmonia(acordepesquisado);
                  });
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  mostrarImagemDinamica(acordepesquisado),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
