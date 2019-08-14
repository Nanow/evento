import 'package:evento/apps/tutorial3/models/item.dart';
import 'package:flutter/material.dart';

class FoodDetailScreen extends StatefulWidget {
  final Item item;

  const FoodDetailScreen({Key key, @required this.item}) : super(key: key);

  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState(this.item);
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  final Item item;

  _FoodDetailScreenState(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7FA2FB),
        appBar: AppBar(
          title: Text(
            'Detalhes',
            style: TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed:null,
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.83,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: this.item.hashCode,
                    child: Image.asset(
                      item.image,
                      height: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    item.nome,
                    style: TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "R\$ ${item.preco}",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
