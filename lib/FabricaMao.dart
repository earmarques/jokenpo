
import 'dart:ui';

import 'package:jokenpo/TipoMao.dart';
import 'Mao.dart';
import 'MaoiD.dart';

class FabricaMao {

  static final MaoId _pedra   = MaoId('PEDRA',  'images/pedra.png');
  static final MaoId _papel   = MaoId('PAPEL',  'images/papel.png');
  static final MaoId _tesoura = MaoId('TESOURA','images/tesoura.png');

  

  static Mao criarMao(TipoMao? tipo, { espelhada = false, destacada = false,
       Color? corFundo, Color? corBordaPadrao, Color? corBordaDestaque, 
      double? largura, double? alturaImagem}) {
    
    if (tipo == TipoMao.PEDRA) {
      return Mao(
        _pedra.nome,
        _pedra.localImagem,
        espelhada,
        destacada,
        largura: largura,
        alturaImagem: alturaImagem,
        corFundo: corFundo,
        corBordaPadrao: corBordaPadrao,
        corBordaDestaque: corBordaDestaque
      );
    }
    else if (tipo == TipoMao.PAPEL) {
      return Mao(
        _papel.nome,
        _papel.localImagem,
        espelhada,
        destacada,
        largura: largura,
        alturaImagem: alturaImagem,
        corFundo: corFundo,
        corBordaPadrao: corBordaPadrao,
        corBordaDestaque: corBordaDestaque
      );
    }
    else if (tipo == TipoMao.TESOURA) {
      return Mao(
        _tesoura.nome,
        _tesoura.localImagem,
        espelhada,
        destacada,
        largura: largura,
        alturaImagem: alturaImagem,
        corFundo: corFundo,
        corBordaPadrao: corBordaPadrao,
        corBordaDestaque: corBordaDestaque
      );
    }
    
    throw Exception('Tipo de mão indefinido!');

  }
}