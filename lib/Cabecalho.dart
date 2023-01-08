import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(        
        child: Text(
          'Selecione uma opção de mão para jogar.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),        
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        alignment: Alignment.center,      
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.0, -0.8),
          end: const Alignment(0.0, 1.8),
          colors: <Color>[
            Colors.blueGrey.shade900,
            Colors.black,                     
            Colors.orange.shade900,
          ],
        ),
      ),
    );
  }
}
