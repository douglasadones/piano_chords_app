import 'constantes.dart';
import 'package:flutter/material.dart';
import 'pagina_dos_acordes.dart';

class Pagina_Inicial extends StatefulWidget {
  const Pagina_Inicial({Key? key}) : super(key: key);

  @override
  State<Pagina_Inicial> createState() => _Pagina_InicialState();
}

class _Pagina_InicialState extends State<Pagina_Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dificuldade')),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        kListaEscolhida = kAcordeFacil;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaginaDosAcordes(),
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
                const SizedBox(height: 40.0),
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
                          kListaEscolhida = kAcordeDificil;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaginaDosAcordes(),
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
        ),
      ),
    );
  }
}
