import 'package:flutter/material.dart';

class LinhaPrevisao extends StatelessWidget {
  final String dia;
  final IconData icone;
  final String minima;
  final String maxima;

  LinhaPrevisao({
    super.key,
    required this.dia,
    required this.icone,
    required this.minima,
    required this.maxima,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              dia,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Icon(icone, size: 28, color: Colors.blueGrey),
          Expanded(
            child: Text(
              minima,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
          Expanded(
            child: Text(
              maxima,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
