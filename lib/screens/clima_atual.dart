import 'package:flutter/material.dart';
import 'package:projeto_clima/widgets/titulo_secao.dart';

class ClimaAtualScreen extends StatelessWidget {
  ClimaAtualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima atual'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TituloSecao(titulo: 'Cidade atual'),
          Container(
            color: Colors.lightBlue.shade100,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'São Paulo, SP',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Quinta-feira, 15 de outubro',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Divider(),

          TituloSecao(titulo: 'Temperatura'),
          Center(
            child: Text(
              '26°C',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              'Sensação térmica: 28°C',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(),

          TituloSecao(titulo: 'Condição do tempo'),
          Image.network(
            'https://media.istockphoto.com/id/491701259/pt/foto/c%C3%A9u-azul-com-sol.jpg?s=612x612&w=is&k=20&c=Sy93J7QRgnJWCSRfddhh-dUpHwe1YjCKsFg3RmRldtg=',
            height: 200,
            fit: BoxFit.cover,
          ),
          Divider(),

          TituloSecao(titulo: 'Detalhes'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.water_drop, color: Colors.blue, size: 32),
              Icon(Icons.air, color: Colors.teal, size: 32),
              Icon(Icons.umbrella, color: Colors.purple, size: 32),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('65%', style: TextStyle(fontSize: 16)),
                Text('12 km/h', style: TextStyle(fontSize: 16)),
                Text('30%', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Divider(),

          TituloSecao(titulo: 'Atualização'),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Atualizar'),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Última atualização: 14:30',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
