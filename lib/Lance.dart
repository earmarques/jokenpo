
import 'package:flutter/material.dart';

import 'FabricaMao.dart';
import 'Mao.dart';
import 'TipoMao.dart';

class Lance extends StatelessWidget {
  
  String jogador;
  Mao mao;

  Lance({required this.jogador, required this.mao});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      child: Column( 
        children: [
          Text(jogador,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,              
              fontWeight: FontWeight.w900,
            )
          ),
          SizedBox(
            height: 30,
          ),
          mao,        
        ],
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
