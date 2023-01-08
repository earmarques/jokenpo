import 'package:flutter/material.dart';

class ResultadoEmpate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade700,
      width: double.infinity,
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'EMPATE !!! ',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 35,
              color: Colors.white,
            ),
          ),          
        ],
      ),
    );
  }
}

