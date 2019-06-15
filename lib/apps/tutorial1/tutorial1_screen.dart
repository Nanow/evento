import 'package:flutter/material.dart';

class Tutorial1Screen extends StatefulWidget {
  @override
  _Tutorial1ScreenState createState() => _Tutorial1ScreenState();
}

class _Tutorial1ScreenState extends State<Tutorial1Screen> {
  bool eFavorito = false;

  @override
  Widget build(BuildContext context) {
    print('builda');
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial 1'),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            'https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/step6/images/lake.jpg',
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
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
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
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
                    'Oeschinen Lake Campground',
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
