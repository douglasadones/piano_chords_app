import 'package:flutter/material.dart';

Map<String, Map> kMapAcordes = {
  'triades': {
    'acordesFaceis': [
      'C',
      'Cm',
      'D',
      'Dm',
      'E',
      'Em',
      'F',
      'Fm',
      'G',
      'Gm',
      'A',
      'Am',
      'B',
      'Bm',
      'Bdim',
    ],
    'acordesDificeis': [
      'C#',
      'Cb',
      'C#m',
      'Cbm',
      'Cdimtri',
      'C#dimtri',
      'Cbdimtri',
      'D#',
      'Db',
      'D#m',
      'Dbm',
      'Ddimtri',
      'D#dimtri',
      'Dbdimtri',
      'E#',
      'Eb',
      'E#m',
      'Ebm',
      'Edimtri',
      'E#dimtri',
      'Ebdimtri',
      'F#',
      'Fb',
      'F#m',
      'Fbm',
      'Fdimtri',
      'F#dimtri',
      'Fbdimtri',
      'G#',
      'Gb',
      'G#m',
      'Gbm',
      'Gdimtri',
      'G#dimtri',
      'Gbdimtri',
      'A#',
      'Ab',
      'A#m',
      'Abm',
      'Adimtri',
      'A#dimtri',
      'Abdimtri',
      'B#',
      'Bb',
      'B#m',
      'Bbm',
      'B#dimtri',
      'Bbdimtri',
    ],
  },
  'tetrades': {
    'acordesFaceis': [
      'C7M',
      'Dm7',
      'Em7',
      'F7M',
      'G7',
      'Am7',
      'Bm7(b5)',
    ],
    'acordesDificeis': ['Aguardando acordes'],
  },
};

late List<String> kListaEscolhida;

late String kAcordeEscolhidoUI;

late String kAcordeEscolhido;

String kFuncaoBotao = 'SORTEAR';

bool kMostrarImagem = false;

enum Tipo { triades, tetrades }

Tipo kTipoAcorde = Tipo.triades;

MaterialColor kCorAtiva = Colors.blue;

MaterialColor kCorInativa = Colors.grey;
