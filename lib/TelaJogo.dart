import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jokenpo/Cabecalho.dart';
import 'package:jokenpo/PainelOpcoes.dart';
import 'package:jokenpo/ResultadoPerdedor.dart';
import 'package:jokenpo/ResultadoVencedor.dart';
import 'package:jokenpo/TelaResultado.dart';
import 'package:jokenpo/TipoMao.dart';
import 'package:jokenpo/Ringue.dart';

import 'ResultadoEmpate.dart';

class TelaJogo extends StatefulWidget {

  @override
  _TelaJogoState createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {

  TipoMao? maoJogador;
  TipoMao? maoComputador;
  PainelOpcoes painelOpcoes = PainelOpcoes();
  Widget ganhou = ResultadoVencedor();  
  Widget perdeu = ResultadoPerdedor();  
  Widget empate = ResultadoEmpate();  
  Widget telaResultado = TelaResultado();
  Widget ringue = Flexible(
    child: TelaResultado(),
  );

  var maos = [TipoMao.PEDRA, TipoMao.PAPEL, TipoMao.TESOURA];

  void jokenpo() {
    Random random = Random();
    int numeroSorteado = random.nextInt(3);
    this.maoComputador = maos[numeroSorteado];
    this.maoJogador = painelOpcoes.maoSelecionada;

    setState(() {
      updateRingue();
      setResultado(this.maoJogador, this.maoComputador);
    });
  }

  void updateRingue() {
    ringue = Ringue(
      maoJogador: this.maoJogador, 
      maoComputador: this.maoComputador
    );  
  }
  

  void setResultado(TipoMao? maoJogador, TipoMao? maoComputador) {
    if (maoJogador == maoComputador) {
      telaResultado = empate; 
      return;
    }

    if (maoJogador == TipoMao.PAPEL) {
      telaResultado = maoComputador == TipoMao.PEDRA   ? ganhou : perdeu;       
    }
    else if (maoJogador == TipoMao.PEDRA) {
      telaResultado = maoComputador == TipoMao.TESOURA ? ganhou : perdeu;       
    }
    else if (maoJogador == TipoMao.TESOURA) {
      telaResultado = maoComputador == TipoMao.PAPEL   ? ganhou : perdeu;       
    }
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Cabecalho(),
          painelOpcoes,     
          Container(
            color: Colors.black,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 20
            ),
            height: 100,
            //margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              //onPressed: () => {},
              onPressed: jokenpo,
              child: Text(
                'Joken.......   PÔ',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),     
          Flexible(
            child: Container(
              child: Column(
              children: [
                ringue,
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              ),
              color: Colors.black87,
            ),

          ),
          telaResultado,
       ],
      )
    );
  }
}
