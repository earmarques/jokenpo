import 'package:flutter/material.dart';

class ResultadoVencedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WINNER!!! ',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Image.asset(
            'images/festa_cone.png',
            height: 50,
          ),
          Image.asset(
            'images/festa_smile.png',
            height: 50,
          ),
        ],
      ),
    );
  }
}
