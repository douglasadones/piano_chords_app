import '../utilitarios/constantes.dart';
import 'package:flutter/material.dart';
import 'tela_acordes_aleatorios.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Parâmetros')),
      ),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? buildPortrait(context)
              : buildLandscape(context),
        ),
      ),
    );
  }

  Row buildPortrait(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      kTipoAcorde = Tipo.triades;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          kTipoAcorde == Tipo.triades ? kCorAtiva : kCorInativa,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 80,
                    height: 60,
                    child: Center(
                      child: Text(
                        'Tríades',
                        style: TextStyle(
                            color: kTipoAcorde == Tipo.triades
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      kTipoAcorde = Tipo.tetrades;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: kTipoAcorde == Tipo.tetrades
                          ? kCorAtiva
                          : kCorInativa,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 80,
                    height: 60,
                    child: Center(
                      child: Text('Tétrades',
                          style: TextStyle(
                              color: kTipoAcorde == Tipo.tetrades
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0)),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 160.0,
              height: 60.0,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    kAcordeEscolhido = '...';
                    kAcordeEscolhidoUI = '...';
                    kFuncaoBotao == 'SORTEAR';
                    kMostrarImagem = false;
                    if (kTipoAcorde == Tipo.triades) {
                      kListaEscolhida =
                          kMapAcordes['triades']?['acordesFaceis'];
                    } else {
                      kListaEscolhida =
                          kMapAcordes['tetrades']?['acordesFaceis'];
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaAcordesAleatorios(),
                      ),
                    );
                  });
                },
                child: const Text(
                  'Fácil',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 160.0,
              height: 60.0,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    setState(() {
                      kAcordeEscolhido = '...';
                      kAcordeEscolhidoUI = '...';
                      kMostrarImagem = false;
                      kFuncaoBotao == 'SORTEAR';
                      if (kTipoAcorde == Tipo.triades) {
                        kListaEscolhida =
                            kMapAcordes['triades']?['acordesDificeis'];
                      } else {
                        kListaEscolhida =
                            kMapAcordes['tetrades']?['acordesDificeis'];
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaAcordesAleatorios(),
                        ),
                      );
                    });
                  });
                },
                child: const Text(
                  'Difícil',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row buildLandscape(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        kTipoAcorde = Tipo.triades;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: kTipoAcorde == Tipo.triades
                            ? kCorAtiva
                            : kCorInativa,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 80,
                      height: 60,
                      child: Center(
                        child: Text(
                          'Tríades',
                          style: TextStyle(
                              color: kTipoAcorde == Tipo.triades
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        kTipoAcorde = Tipo.tetrades;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: kTipoAcorde == Tipo.tetrades
                            ? kCorAtiva
                            : kCorInativa,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: 80,
                      height: 60,
                      child: Center(
                        child: Text('Tétrades',
                            style: TextStyle(
                                color: kTipoAcorde == Tipo.tetrades
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 160.0,
                    height: 60.0,
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: () {
                        setState(() {
                          kAcordeEscolhido = '...';
                          kAcordeEscolhidoUI = '...';
                          kMostrarImagem = false;
                          kFuncaoBotao == 'SORTEAR';
                          kMostrarImagem = false;
                          if (kTipoAcorde == Tipo.triades) {
                            kListaEscolhida =
                                kMapAcordes['triades']?['acordesFaceis'];
                          } else {
                            kListaEscolhida =
                                kMapAcordes['tetrades']?['acordesFaceis'];
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TelaAcordesAleatorios(),
                            ),
                          );
                        });
                      },
                      child: const Text(
                        'Fácil',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    width: 160.0,
                    height: 60.0,
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: () {
                        setState(() {
                          setState(() {
                            kAcordeEscolhido = '...';
                            kAcordeEscolhidoUI = '...';
                            kMostrarImagem = false;
                            kFuncaoBotao == 'SORTEAR';
                            kMostrarImagem = false;
                            if (kTipoAcorde == Tipo.triades) {
                              kListaEscolhida =
                                  kMapAcordes['triades']?['acordesDificeis'];
                            } else {
                              kListaEscolhida =
                                  kMapAcordes['tetrades']?['acordesDificeis'];
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const TelaAcordesAleatorios(),
                              ),
                            );
                          });
                        });
                      },
                      child: const Text(
                        'Difícil',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Slider configurado pra caso precise futuramente...:
// SliderTheme(
//                     data: SliderTheme.of(context).copyWith(
//                       activeTickMarkColor: Colors.transparent,
//                       inactiveTickMarkColor: Colors.transparent,
//                     ),
//                     child: Slider(
//                       value: rating.toDouble(),
//                       min: 1,
//                       max: 2,
//                       onChanged: (double newRating) {
//                         setState(() {
//                           rating = newRating.round();
//                         });
//                       },
//                       divisions: 1,
//                       label: tipoAcordes(rating),
//                     ),
//                   ),
