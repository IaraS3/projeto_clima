import 'package:flutter/material.dart';
import 'package:projeto_clima/screens/clima_atual.dart';
import 'package:projeto_clima/screens/previsao_semana.dart';
import 'package:projeto_clima/screens/detalhes_avancados.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClimaApp'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClimaAtualScreen()),
                );
              },
              child: Text('Clima atual'),
            ),
            
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrevisaoSemanaScreen()),
                );
              },
              child: Text('Previsão da semana'),
            ),

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetalhesAvancadosScreen(),),
                );
              },
              child: Text('Detalhes avançados'),
            ),
            
          ],
        ),
      ),
    );
  }
}
