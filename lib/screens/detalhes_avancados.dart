import 'package:flutter/material.dart';
import 'package:projeto_clima/widgets/titulo_secao.dart'; 

class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes avançados"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [

          TituloSecao(titulo: "Alertas"),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.orange),
              title: Text("Chuva forte"),
              subtitle: Text("Previsto para hoje, a partir das 18h"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.ac_unit, color: Colors.blue),
              title: Text("Frente fria"),
              subtitle: Text("Queda de temperatura"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),

          Divider(height: 32),

          TituloSecao(titulo: "Indicadores"),
          SizedBox(height: 8),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildIndicadorCard(Icons.wb_sunny, "6", "Índice UV"),
              _buildIndicadorCard(Icons.speed, "1012", "Pressão"),
              _buildIndicadorCard(Icons.visibility, "10 km", "Visibilidade"),
              _buildIndicadorCard(Icons.wb_twilight, "06:12", "Nascer do sol"),
            ],
          ),

          Divider(height: 32),

          TituloSecao(titulo: "Condição do tempo"),
          SizedBox(height: 8),
          Stack(
            children: [
              Image.network(
                "https://static.escolakids.uol.com.br/2025/09/1-chuva-intensa.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Text("26°C",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Icon(Icons.thunderstorm, color: Colors.white, size: 32,),
              ),
            ],
          ),

          Divider(height: 32),

          TituloSecao(titulo: "Tags"),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(avatar: Icon(Icons.thunderstorm, size: 16),
                label: Text("Chuva forte"),),
              Chip(avatar: Icon(Icons.wb_sunny, size: 16),
                label: Text("UV alto"),),
              Chip(label: Text("Vento moderado")),
              Chip(label: Text("Umidade alta")),
              Chip(label: Text("Frente fria")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIndicadorCard(IconData icone, String valor, String nome) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 28, color: Colors.blueGrey),
            SizedBox(height: 8),
            Text(
              valor,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              nome,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
