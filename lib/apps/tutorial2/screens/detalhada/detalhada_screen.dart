import 'package:evento/apps/tutorial2/model/local.dart';
import 'package:flutter/material.dart';

class DatalhadaScreen extends StatefulWidget {
  final Local local;

  const DatalhadaScreen({Key key, this.local}) : super(key: key);

  @override
  _DatalhadaScreenState createState() => _DatalhadaScreenState(this.local);
}

class _DatalhadaScreenState extends State<DatalhadaScreen> {
  bool eFavorito = false;

  final Local local;

  _DatalhadaScreenState(this.local);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 1'),
      ),
      body: ListView(
        children: <Widget>[
          Hero(
            tag: this.local.hashCode,
            child: Image.network(
              this.local.imagem,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          _titleSection(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
              _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
              _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
            ],
          ),
          _textSection()
        ],
      ),
    );
  }

  Widget _textSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        this.local.descricao,
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }

  Widget _titleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    this.local.nome,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          _favorito(),
          Text('41'),
        ],
      ),
    );
  }

  Widget _favorito() {
    return IconButton(
      color: Colors.red[500],
      onPressed: () {
        setState(() {
          eFavorito = !eFavorito;
        });
      },
      icon: Icon(
        eFavorito ? Icons.star : Icons.star_border,
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
