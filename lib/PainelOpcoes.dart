import 'package:flutter/material.dart';

import 'FabricaMao.dart';
import 'Mao.dart';
import 'TipoMao.dart';

class PainelOpcoes extends StatefulWidget {
  final Color corPadrao = Colors.blueGrey.shade900;
  TipoMao? maoSelecionada;

  @override
  _PainelOpcoesState createState() => _PainelOpcoesState();
}

class _PainelOpcoesState extends State<PainelOpcoes> {
  TipoMao? maoSelecionada;// = DTO.maoJogador;
  Mao? pedra;  
  Mao? papel;  
  Mao? tesoura;  

  
  _PainelOpcoesState() {
    _buildMaos(maoSelecionada);
  }

  _update(TipoMao selecionada) {
    setState( () {
      _buildMaos(selecionada);
      maoSelecionada = selecionada;
      widget.maoSelecionada = maoSelecionada;
    }); 
      
  }

  void _buildMaos(TipoMao? selecionada) {
    print(selecionada);
    if (selecionada == null) {
      pedra   = FabricaMao.criarMao(TipoMao.PEDRA);
      papel   = FabricaMao.criarMao(TipoMao.PAPEL);
      tesoura = FabricaMao.criarMao(TipoMao.TESOURA);
    }
    else switch (selecionada) {
      case TipoMao.PEDRA:
        pedra   = FabricaMao.criarMao(TipoMao.PEDRA, destacada: true);
        papel   = FabricaMao.criarMao(TipoMao.PAPEL);
        tesoura = FabricaMao.criarMao(TipoMao.TESOURA);
        break;
      case TipoMao.PAPEL:
        pedra   = FabricaMao.criarMao(TipoMao.PEDRA);
        papel   = FabricaMao.criarMao(TipoMao.PAPEL, destacada: true);
        tesoura = FabricaMao.criarMao(TipoMao.TESOURA);
        break;
      case TipoMao.TESOURA:
        pedra   = FabricaMao.criarMao(TipoMao.PEDRA);
        papel   = FabricaMao.criarMao(TipoMao.PAPEL);
        tesoura = FabricaMao.criarMao(TipoMao.TESOURA, destacada: true);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    
    print('widget.maoSelecionada');
    print(widget.maoSelecionada);

    return Container(
      color: widget.corPadrao,
      padding: const EdgeInsets.symmetric(vertical: 18),
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => _update(TipoMao.PEDRA), 
            child: pedra,            
          ),
          GestureDetector(
            onTap: () => _update(TipoMao.PAPEL), 
            child: papel,            
          ),
          GestureDetector(
            onTap: () => _update(TipoMao.TESOURA), 
            child: tesoura,            
          ),
          
        ],
      ),
    );
  }
  
}
