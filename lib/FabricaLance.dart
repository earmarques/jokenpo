
import 'package:jokenpo/FabricaMao.dart';
import 'package:jokenpo/TipoMao.dart';

import 'Lance.dart';

enum TipoJogador {
  HOMEM, 
  MAQUINA
}


class FabricaLance {
  
  
  static Lance criarLance(TipoMao? tipoMao, TipoJogador? tipoJogador) {

    String jogador;
    bool espelhada;
    if (tipoJogador == TipoJogador.HOMEM) {
      jogador = "HOMEM";
      espelhada = false;      
    }
    else {
      jogador = "MÁQUINA";
      espelhada = true;
    }
    return Lance(
      jogador: jogador,
      mao: FabricaMao.criarMao(tipoMao,  
        espelhada: espelhada,
        alturaImagem: 200,
        largura: 250,
      ),      
    );
  }
}

