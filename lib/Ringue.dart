import 'package:flutter/material.dart';
import 'package:jokenpo/FabricaLance.dart';
import 'package:jokenpo/TipoMao.dart';

//import 'Lance.dart';

class Ringue extends StatelessWidget {

TipoMao? maoJogador;
TipoMao? maoComputador;

Ringue({this.maoJogador, this.maoComputador});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          FabricaLance.criarLance(maoJogador, TipoJogador.HOMEM),
          FabricaLance.criarLance(maoComputador, TipoJogador.MAQUINA),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
    );
  }
}

