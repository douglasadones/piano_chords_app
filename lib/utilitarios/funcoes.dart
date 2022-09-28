import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'constantes.dart';

kMostrandoAcorde(String acorde) {
  /// Após aplicar o tratamento da Enarmonia, mostra a imagem do acorde assim que
  /// o botão 'MOSTRAR ACORDE' for pressionado.
  if (kMostrarImagem && acorde != 'Acorde Não Encontrado') {
    String acordeTratado = kTratandoEnarmonia(acorde);
    acorde = acordeTratado;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioCache();
          player.play('sons/$acorde.mp3');
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          child: Image(
            image: AssetImage('assets/images/$acorde.png'),
          ),
        ),
      ),
    );
  } else {
    return const SizedBox();
  }
}

String kTratandoEnarmonia(String acorde) {
  /// Verifica o acorde escolhido e faz o tratamento da enarmonia. Isso beneficia
  /// a quantidade de imagens e áudios usados no aplicativo.
  /// Processo: Transforma a String em uma lista, realiza o tratamento e transforma
  /// a lista novamente em uma string.
  try {
    List<String> acordeSeparado = acorde.split('');
    acordeSeparado[0] = acordeSeparado[0].toUpperCase();
    if (acordeSeparado.length > 1) {
      if (acordeSeparado[0] == 'A' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'G';
        acordeSeparado[1] = '#';
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'D' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'C';
        acordeSeparado[1] = '#';
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'G' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'F';
        acordeSeparado[1] = '#';
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'B' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'A';
        acordeSeparado[1] = '#';
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'E' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'D';
        acordeSeparado[1] = '#';
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'C' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'B';
        acordeSeparado.removeAt(1);
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'F' && acordeSeparado[1] == 'b') {
        acordeSeparado[0] = 'E';
        acordeSeparado.removeAt(1);
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'E' && acordeSeparado[1] == '#') {
        acordeSeparado[0] = 'F';
        acordeSeparado.removeAt(1);
        acorde = acordeSeparado.join('');
        return acorde;
      } else if (acordeSeparado[0] == 'B' && acordeSeparado[1] == '#') {
        acordeSeparado[0] = 'C';
        acordeSeparado.removeAt(1);
        acorde = acordeSeparado.join('');
        return acorde;
      } else {
        acordeSeparado[0] = acordeSeparado[0].toUpperCase();
        acorde = acordeSeparado.join('');
        return acorde;
      }
    } else {
      acordeSeparado[0] = acordeSeparado[0].toUpperCase();
      acorde = acordeSeparado.join('');
      return acorde;
    }
  } on RangeError {
    return '';
  } catch (e) {
    return 'Acorde Não encontrado, Erro: $e';
  }
}

String kTratandoCasoDim(String acorde) {
  /// Essa função tem como objetivo mostrar o símbolo '°' para o usuário e
  /// converter esse caractere para 'dim' possibilitando imagens e sons.
  List<String> acordeSeparado = acorde.split('dim');
  String acordeAntigo = acorde;
  String acordeNovo = acordeSeparado.join('');
  if (acordeAntigo != acordeNovo) {
    acordeSeparado.add('°');
    acordeSeparado.remove('tri');
    acorde = acordeSeparado.join('');
    return acorde;
  } else {
    acorde = acordeSeparado.join('');
    return acorde;
  }
}
