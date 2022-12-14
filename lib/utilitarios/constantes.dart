import 'package:flutter/material.dart';

/// Obs: Arquivos de imagem/áudio com 'tri' estão se referindo a 'tríades'

List<String> kTodosOsAcordes = [
  'C',
  'Cm',
  'C(sus4)',
  'D',
  'Dm',
  'D(sus4)',
  'E',
  'Em',
  'E(sus4)',
  'F',
  'Fm',
  'F(sus4)',
  'G',
  'Gm',
  'G(sus4)',
  'A',
  'Am',
  'A(sus4)',
  'B',
  'Bm',
  'B(sus4)',
  'Bdimtri',
  'C#(sus4)',
  'Cb(sus4)',
  'C#',
  'Cb',
  'C#m',
  'Cbm',
  'Cdimtri',
  'C#dimtri',
  'Cbdimtri',
  'D#(sus4)',
  'Db(sus4)',
  'D#',
  'Db',
  'D#m',
  'Dbm',
  'Ddimtri',
  'D#dimtri',
  'Dbdimtri',
  'E#(sus4)',
  'Eb(sus4)',
  'E#',
  'Eb',
  'E#m',
  'Ebm',
  'Edimtri',
  'E#dimtri',
  'Ebdimtri',
  'F#(sus4)',
  'Fb(sus4)',
  'F#',
  'Fb',
  'F#m',
  'Fbm',
  'Fdimtri',
  'F#dimtri',
  'Fbdimtri',
  'G#(sus4)',
  'Gb(sus4)',
  'G#',
  'Gb',
  'G#m',
  'Gbm',
  'Gdimtri',
  'G#dimtri',
  'Gbdimtri',
  'A#(sus4)',
  'Ab(sus4)',
  'A#',
  'Ab',
  'A#m',
  'Abm',
  'Adimtri',
  'A#dimtri',
  'Abdimtri',
  'B#(sus4)',
  'Bb(sus4)',
  'B#',
  'Bb',
  'B#m',
  'Bbm',
  'B#dimtri',
  'Bbdimtri',
  'C7M',
  'C7',
  'Dm7',
  'D7',
  'Em7',
  'E7',
  'F7M',
  'F7',
  'G7',
  'Gm7',
  'Am7',
  'A7',
  'Bm7(b5)',
  'C7M',
  'C7',
  'Cm7',
  'Cm7(b5)',
  'Cdim',
  'C#7M',
  'C#7',
  'C#m7',
  'C#m7(b5)',
  'C#dim',
  'Cb7M',
  'Cb7',
  'Cbm7',
  'Cbm7(b5)',
  'Cbdim',
  'D7M',
  'D7',
  'Dm7',
  'Dm7(b5)',
  'Ddim',
  'D#7M',
  'D#7',
  'D#m7',
  'D#m7(b5)',
  'D#dim',
  'Db7M',
  'Db7',
  'Dbm7',
  'Dbm7(b5)',
  'Dbdim',
  'E7M',
  'E7',
  'Em7',
  'Em7(b5)',
  'Edim',
  'E#7M',
  'E#7',
  'E#m7',
  'E#m7(b5)',
  'E#dim',
  'Eb7M',
  'Eb7',
  'Ebm7',
  'Ebm7(b5)',
  'Ebdim',
  'F7M',
  'F7',
  'Fm7',
  'Fm7(b5)',
  'Fdim',
  'F#7M',
  'F#7',
  'F#m7',
  'F#m7(b5)',
  'F#dim',
  'Fb7M',
  'Fb7',
  'Fbm7',
  'Fbm7(b5)',
  'Fbdim',
  'G7M',
  'G7',
  'Gm7',
  'Gm7(b5)',
  'Gdim',
  'G#7M',
  'G#7',
  'G#m7',
  'G#m7(b5)',
  'G#dim',
  'Gb7M',
  'Gb7',
  'Gbm7',
  'Gbm7(b5)',
  'Gbdim',
  'A7M',
  'A7',
  'Am7',
  'Am7(b5)',
  'Adim',
  'A#7M',
  'A#7',
  'A#m7',
  'A#m7(b5)',
  'A#dim',
  'Ab7M',
  'Ab7',
  'Abm7',
  'Abm7(b5)',
  'Abdim',
  'B7M',
  'B7',
  'Bm7',
  'Bm7(b5)',
  'Bdim',
  'B#7M',
  'B#7',
  'B#m7',
  'B#m7(b5)',
  'B#dim',
  'Bb7M',
  'Bb7',
  'Bbm7',
  'Bbm7(b5)',
  'Bbdim',
  'Cm7M',
  'C#m7M',
  'Cbm7M',
  'Dm7M',
  'D#m7M',
  'Dbm7M',
  'Em7M',
  'E#m7M',
  'Ebm7M',
  'Fm7M',
  'F#m7M',
  'Fbm7M',
  'Gm7M',
  'G#m7M',
  'Gbm7M',
  'Am7M',
  'A#m7M',
  'Abm7M',
  'Bm7M',
  'B#m7M',
  'Bbm7M',
];

Map<String, Map> kMapAcordes = {
  'triades': {
    'acordesFaceis': [
      'C',
      'Cm',
      'C(sus4)',
      'D',
      'Dm',
      'D(sus4)',
      'E',
      'Em',
      'E(sus4)',
      'F',
      'Fm',
      'F(sus4)',
      'G',
      'Gm',
      'G(sus4)',
      'A',
      'Am',
      'A(sus4)',
      'B',
      'Bm',
      'Bdimtri',
    ],
    'acordesDificeis': [
      'C#(sus4)',
      'Cb(sus4)',
      'C#',
      'Cb',
      'C#m',
      'Cbm',
      'Cdimtri',
      'C#dimtri',
      'Cbdimtri',
      'D#(sus4)',
      'Db(sus4)',
      'D#',
      'Db',
      'D#m',
      'Dbm',
      'Ddimtri',
      'D#dimtri',
      'Dbdimtri',
      'E#(sus4)',
      'Eb(sus4)',
      'E#',
      'Eb',
      'E#m',
      'Ebm',
      'Edimtri',
      'E#dimtri',
      'Ebdimtri',
      'F#(sus4)',
      'Fb(sus4)',
      'F#',
      'Fb',
      'F#m',
      'Fbm',
      'Fdimtri',
      'F#dimtri',
      'Fbdimtri',
      'G#(sus4)',
      'Gb(sus4)',
      'G#',
      'Gb',
      'G#m',
      'Gbm',
      'Gdimtri',
      'G#dimtri',
      'Gbdimtri',
      'A#(sus4)',
      'Ab(sus4)',
      'A#',
      'Ab',
      'A#m',
      'Abm',
      'Adimtri',
      'A#dimtri',
      'Abdimtri',
      'B(sus4)',
      'B#(sus4)',
      'Bb(sus4)',
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
      'C7',
      'Dm7M',
      'Dm7',
      'D7',
      'Em7M',
      'Em7',
      'E7',
      'F7M',
      'F7',
      'G7',
      'Gm7',
      'Am7M',
      'Am7',
      'A7',
      'Bm7(b5)',
    ],
    'acordesDificeis': [
      'C7M',
      'C7',
      'Cm7M',
      'Cm7',
      'Cm7(b5)',
      'Cdim',
      'C#7M',
      'C#7',
      'C#m7M',
      'C#m7',
      'C#m7(b5)',
      'C#dim',
      'Cb7M',
      'Cbm7M',
      'Cb7',
      'Cbm7',
      'Cbm7(b5)',
      'Cbdim',
      'D7M',
      'D7',
      'Dm7',
      'Dm7(b5)',
      'Ddim',
      'D#7M',
      'D#7',
      'D#m7M',
      'D#m7',
      'D#m7(b5)',
      'D#dim',
      'Db7M',
      'Db7',
      'Dbm7M',
      'Dbm7',
      'Dbm7(b5)',
      'Dbdim',
      'E7M',
      'E7',
      'Em7',
      'Em7(b5)',
      'Edim',
      'E#7M',
      'E#7',
      'E#m7M',
      'E#m7',
      'E#m7(b5)',
      'E#dim',
      'Eb7M',
      'Eb7',
      'Ebm7M',
      'Ebm7',
      'Ebm7(b5)',
      'Ebdim',
      'F7M',
      'F7',
      'Fm7M',
      'Fm7',
      'Fm7(b5)',
      'Fdim',
      'F#7M',
      'F#7',
      'F#m7M',
      'F#m7',
      'F#m7(b5)',
      'F#dim',
      'Fb7M',
      'Fb7',
      'Fbm7M',
      'Fbm7',
      'Fbm7(b5)',
      'Fbdim',
      'G7M',
      'G7',
      'Gm7M',
      'Gm7',
      'Gm7(b5)',
      'Gdim',
      'G#7M',
      'G#7',
      'G#m7M',
      'G#m7',
      'G#m7(b5)',
      'G#dim',
      'Gb7M',
      'Gb7',
      'Gbm7M',
      'Gbm7',
      'Gbm7(b5)',
      'Gbdim',
      'A7M',
      'A7',
      'Am7',
      'Am7(b5)',
      'Adim',
      'A#7M',
      'A#7',
      'A#m7M',
      'A#m7',
      'A#m7(b5)',
      'A#dim',
      'Ab7M',
      'Ab7',
      'Abm7M',
      'Abm7',
      'Abm7(b5)',
      'Abdim',
      'B7M',
      'B7',
      'Bm7M',
      'Bm7',
      'Bm7(b5)',
      'Bdim',
      'B#7M',
      'B#7',
      'B#m7M',
      'B#m7',
      'B#m7(b5)',
      'B#dim',
      'Bb7M',
      'Bb7',
      'Bbm7M',
      'Bbm7',
      'Bbm7(b5)',
      'Bbdim',
    ],
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

InputDecoration kEstiloBarraDePesquisa = InputDecoration(
  filled: true,
  fillColor: Colors.blue[200],
  // icon: const Icon(
  //   Icons.search,
  //   color: Colors.blue,
  // ),
  hintText: 'Digite o Nome do Acorde',
  hintStyle: TextStyle(color: Colors.grey[600]),
  border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none),
);

double tamanhoDaTela = 0;
