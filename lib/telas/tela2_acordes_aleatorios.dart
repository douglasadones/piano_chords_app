import 'package:flutter/material.dart';
import '../utilitarios/funcoes.dart';
import '../utilitarios/constantes.dart';
import 'dart:math';

class Tela2AcordesAleatorios extends StatefulWidget {
  const Tela2AcordesAleatorios({Key? key}) : super(key: key);

  @override
  State<Tela2AcordesAleatorios> createState() => _Tela2AcordesAleatoriosState();
}

class _Tela2AcordesAleatoriosState extends State<Tela2AcordesAleatorios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praticando'),
      ),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? buildPortrait()
              : buildLandscape(),
        ),
      ),
    );
  }

  Column buildPortrait() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 90.0,
        ),
        Center(
          child: Text(
            kAcordeEscolhidoUI,
            style: const TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
          ),
        ),
        kMostrandoAcorde(kAcordeEscolhido),
        GestureDetector(
          onTap: () {
            setState(() {
              if (kFuncaoBotao == 'SORTEAR') {
                kAcordeEscolhido =
                    kListaEscolhida[Random().nextInt(kListaEscolhida.length)];
                kAcordeEscolhidoUI = kTratandoCasoDim(kAcordeEscolhido);
                kFuncaoBotao = 'MOSTRAR ACORDE';
                kMostrarImagem = false;
              } else {
                kMostrarImagem = true;
                kFuncaoBotao = 'SORTEAR';
              }
            });
          },
          child: Container(
            width: double.infinity,
            height: 90,
            color: Colors.blue,
            child: Center(
              child: Text(
                kFuncaoBotao,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column buildLandscape() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
              ),
              Center(
                child: Text(
                  kAcordeEscolhidoUI,
                  style: const TextStyle(
                      fontSize: 100.0, fontWeight: FontWeight.bold),
                ),
              ),
              kMostrandoAcorde(kAcordeEscolhido),
            ],
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (kFuncaoBotao == 'SORTEAR') {
                  kAcordeEscolhido =
                      kListaEscolhida[Random().nextInt(kListaEscolhida.length)];
                  kAcordeEscolhidoUI = kTratandoCasoDim(kAcordeEscolhido);
                  kFuncaoBotao = 'MOSTRAR ACORDE';
                  kMostrarImagem = false;
                } else {
                  kMostrarImagem = true;
                  kFuncaoBotao = 'SORTEAR';
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              height: 45,
              color: Colors.blue,
              child: Center(
                child: Text(
                  kFuncaoBotao,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
