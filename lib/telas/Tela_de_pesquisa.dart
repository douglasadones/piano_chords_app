import 'package:flutter/material.dart';
import '../utilitarios/funcoes.dart';
import '../utilitarios/constantes.dart';
import 'package:flutter_html/flutter_html.dart';

class TelaDePesquisa extends StatefulWidget {
  const TelaDePesquisa({Key? key}) : super(key: key);

  @override
  State<TelaDePesquisa> createState() => _TelaDePesquisaState();
}

class _TelaDePesquisaState extends State<TelaDePesquisa> {
  String acordepesquisado = '';

  final htmlData =
      """<body><header><h1 style="text-align: center;">Dicas para pesquisa:</h1></header>
  <h2>Acordes Válidos Até o Momento:</h2>
  <p><ul>
  <li><strong>X: </strong>Tríades Maiores</li>
  <li><strong>X<span class='NotasdoAcorde'>m</span>: </strong>Tríades menores</li>
  <li><strong>X<span class='NotasdoAcorde'>7M</span>: </strong>Acordes Maiores Com Sétima Maior</li>
  <li><strong>X<span class='NotasdoAcorde'>7</span>: </strong>Acordes Maiores Com Sétima menor</li>
  <li><strong>X<span class='NotasdoAcorde'>m7</span>: </strong>Acordes menores Com Sétima menor</li>
  <li><strong>X<span class='NotasdoAcorde'>m7(b5)</span>: </strong>Acordes menores Com Sétima menor e Quinta Diminuta (Acordes Meio-Diminutos)</li>
  <li><strong>X<span class='NotasdoAcorde'>dimtri</span>: </strong>Acordes Diminutos (Tríade)</li>
  <li><strong>X<span class='NotasdoAcorde'>dim</span>: </strong>Acordes Diminutos (Tétrade)</li>
  <li><strong>X<span class='NotasdoAcorde'>#</span>: </strong>Variação Sustenida dos itens acima</li>
  <li><strong>X<span class='NotasdoAcorde'>b</span>: </strong>Variação Bemol dos itens acima</li>
  </ul></p>
  <h2>Som dos Acordes:</h2>
  <p><ul><li>Para ouvir o som do acorde escolhido, basta <ins>tocar na imagem</ins> do acorde.</li></ul></p></body>""";

  Widget mostrarImagemDinamica(acorde) {
    /// Verifica se o acorde pesquisado está na lista kTodosOsAcordes
    /// Em caso afirmativo, mostra a imagem, já em caso negativo mostra um Text()
    if (kTodosOsAcordes.contains(acorde)) {
      return kMostrandoAcorde(acorde);
    } else if (acorde == '') {
      return Expanded(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.black12,
                  blurRadius: 6,
                ),
              ],
              color: Colors.blue[100],
            ),
            child: Html(
              data: htmlData,
              style: {
                "li": Style(
                    fontSize: FontSize.large, textAlign: TextAlign.justify),
                "strong": Style(fontSize: FontSize.larger),
                "span.NotasdoAcorde": Style(color: Colors.red),
              },
            ),
          ),
        ),
      );
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
        body: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? buildPortrait()
              : buildLandscape(),
        ),
      ),
    );
  }

  Column buildPortrait() {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
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
    );
  }

  Row buildLandscape() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: SizedBox(),
        ),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Container(
              // padding: const EdgeInsets.all(20.0),
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
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Expanded(
          flex: 11,
          child: Column(
            children: [
              mostrarImagemDinamica(acordepesquisado),
            ],
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
