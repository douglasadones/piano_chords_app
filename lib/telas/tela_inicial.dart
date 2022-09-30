import 'package:flutter/material.dart';
import 'tela1_acordes_aleatorios.dart';
import 'tela_de_pesquisa.dart';
import '../utilitarios/containerReutilizavel.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Acordes No Piano'),
          ),
        ),
        body: SafeArea(
          child: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? buildPortrait(context)
                    : buildLandscape(context),
          ),
        ),
      ),
    );
  }

  Column buildPortrait(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SizedBox(),
        ),
        ContainerReutilizavel(
          funcao: 'Sortear Acordes',
          flex: 3,
          onPress: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Tela1AcordesAleatorios(),
                ),
              );
            });
          },
        ),
        ContainerReutilizavel(
          funcao: 'Pesquisar Acordes',
          flex: 3,
          onPress: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TelaDePesquisa(),
                ),
              );
            });
          },
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }

  Row buildLandscape(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SizedBox(),
        ),
        ContainerReutilizavel(
          funcao: 'Sortear Acordes',
          flex: 3,
          onPress: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Tela1AcordesAleatorios(),
                ),
              );
            });
          },
        ),
        ContainerReutilizavel(
          funcao: 'Pesquisar Acordes',
          flex: 3,
          onPress: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TelaDePesquisa(),
                ),
              );
            });
          },
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
