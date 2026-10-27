import 'package:flutter/material.dart';

class TituloSecao extends StatelessWidget {
  final String titulo;

  TituloSecao({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}

