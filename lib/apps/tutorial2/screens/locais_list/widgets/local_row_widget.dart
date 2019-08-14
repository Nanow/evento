import 'package:evento/apps/tutorial2/model/local.dart';
import 'package:evento/apps/tutorial2/screens/detalhada/detalhada_screen.dart';
import 'package:flutter/material.dart';

class LoalRowWidget extends StatefulWidget {
  final Local local;

  LoalRowWidget({Key key, @required this.local}) : super(key: key);

  @override
  _LoalRowWidgetState createState() => _LoalRowWidgetState(local);
}

class _LoalRowWidgetState extends State<LoalRowWidget> {
  final Local local;

  _LoalRowWidgetState(this.local);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (DatalhadaScreen(local: this.local))),);
        },
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: this.local.hashCode,
                child: Image.network(
                  local.imagem,
                  width: 150,
                  height: 150,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        local.nome,
                        style: TextStyle(fontSize: 22,  color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text(
                          local.descricao,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
