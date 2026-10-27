import 'package:flutter/material.dart';
import 'package:projeto_clima/widgets/titulo_secao.dart';
import 'package:projeto_clima/widgets/linha_previsao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  PrevisaoSemanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previsão da Semana'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.blue.shade200,
                  child: Center(child: Text('Mínima\n18°C', textAlign: TextAlign.center)),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.orange.shade200,
                  child: Center(child: Text('Atual\n26°C', textAlign: TextAlign.center)),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.red.shade200,
                  child: Center(child: Text('Máxima\n31°C', textAlign: TextAlign.center)),
                ),
              ),
            ],
          ),
          Divider(),

          TituloSecao(titulo: 'Resumo do dia'),
          Container(
            height: 180,
            color: Colors.amber.shade50,
            padding: EdgeInsets.all(4),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.yellow.shade200,
                    margin: EdgeInsets.symmetric(vertical: 2),
                    child: Center(child: Text('Manhã: 20°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    color: Colors.orange.shade300,
                    margin: EdgeInsets.symmetric(vertical: 2),
                    child: Center(child: Text('Tarde: 29°C')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),

          TituloSecao(titulo: 'Previsão dos próximos dias'),
          LinhaPrevisao(dia: 'Sexta', icone: Icons.wb_sunny, minima: '19°C', maxima: '28°C'),
          LinhaPrevisao(dia: 'Sábado', icone: Icons.cloud, minima: '17°C', maxima: '22°C'),
          LinhaPrevisao(dia: 'Domingo', icone: Icons.umbrella, minima: '16°C', maxima: '20°C'),
          LinhaPrevisao(dia: 'Segunda', icone: Icons.cloud, minima: '18°C', maxima: '25°C'),
          LinhaPrevisao(dia: 'Terça', icone: Icons.wb_sunny, minima: '20°C', maxima: '30°C'),
        ],
      ),
    );
  }
}
