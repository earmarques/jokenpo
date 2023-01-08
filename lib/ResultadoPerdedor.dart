import 'package:flutter/material.dart';

class ResultadoPerdedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PERDEU PLAYBOY !!! ',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Image.asset(
            'images/sarcastic_devil.png',
            height: 50,
          ),
          
        ],
      ),
    );
  }
}

