import 'package:flutter/material.dart';

class Mao extends StatelessWidget {
  
  // Atributos  -----------------------------------------------------------------------------------
  
  // Nullable's
  Color? corFundo;
  Color? corBordaPadrao;
  Color? corBordaDestaque;
  
  // Nomeado com valores default
  double largura = 120;
  double alturaImagem = 100;

  // Imutable's
  final String nome;
  final String imagem;
  final bool espelhada;
  final bool destacada;

  double _radiano = 0.0;

  
  // Construtor   ---------------------------------------------------------------------------------
  
  Mao(this.nome, this.imagem, this.espelhada, this.destacada, 
      { this.corFundo, this.corBordaPadrao, this.corBordaDestaque, 
      double? largura, double? alturaImagem }) {
    
    corFundo = corFundo == null ? Colors.black : corFundo;
    corBordaPadrao = corBordaPadrao == null ? Colors.white : corBordaPadrao;
    corBordaDestaque = corBordaDestaque == null ? Colors.orange.shade700 : corBordaDestaque;

    if (largura != null) this.largura =  largura;
    if (alturaImagem != null) this.alturaImagem =  alturaImagem;

    _radiano = espelhada ? 3.1415927 : 0.0;
  }


  // Métodos    -----------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Container(
        width: largura,
        padding: EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform(
              child: Image.asset(
                imagem,
                height: alturaImagem,
              ),
              alignment: Alignment.center,
              transform: Matrix4.identity()..rotateZ(_radiano),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              nome,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: corFundo,
          borderRadius: BorderRadius.all(const Radius.circular(20)),
        ),
      ),
      decoration: BoxDecoration(        
        // Destaque
        color: destacada ? corBordaDestaque : corBordaPadrao,
        borderRadius: BorderRadius.all(const Radius.circular(24)),
      ),
    );
  }

}
