import 'package:evento/apps/tutorial2/model/local.dart';
import 'package:evento/apps/tutorial2/screens/locais_list/widgets/local_row_widget.dart';
import 'package:evento/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';

class LocaisListScreen extends StatefulWidget {
  @override
  _LocaisListScreenState createState() => _LocaisListScreenState();
}

class _LocaisListScreenState extends State<LocaisListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Locais'),
      ),
      drawer: CustomDrawerWidget(),
      body: ListView.builder(
        itemCount: locais.length,
        itemBuilder: (BuildContext context, int index) {
          return LoalRowWidget(local: locais[index],);
        },
      ),
    );
  }
}

final locais = <Local>[
  Local(
      imagem:
          'https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/step6/images/lake.jpg',
      telefone: '99999999',
      descricao:
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
      lat: '-7.9729383',
      long: '-38.3160529,14',
      nome: 'Oeschinen Lake Campground'),
  Local(
      imagem:
      'https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/step6/images/lake.jpg',
      telefone: '99999999',
      descricao:
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
      lat: '-7.9729383',
      long: '-38.3160529,14',
      nome: 'Oeschinen Lake Campground'),
];
