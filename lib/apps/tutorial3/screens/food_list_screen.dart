import 'package:badges/badges.dart';
import 'package:evento/apps/tutorial3/components/item_list.dart';
import 'package:evento/apps/tutorial3/models/item.dart';
import 'package:flutter/material.dart';

class FoodListScreen extends StatefulWidget {
  @override
  _FoodListScreenState createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0BC1BF),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              position: BadgePosition.topRight(right: 1, top: -0.1),
              child: Container(
                width: 75,
                height: 60,
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Icon(
                  Icons.shopping_cart,
                ),
              ),
            ),
            Container(
              width: 130,
              height: 60,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFF160B24),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Finalizar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
            iconSize: 14,
          ),
          IconButton(
            icon: Icon(
              Icons.fullscreen,
              size: 20,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(top: 8, left: 32),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Ô lá em ',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Casa',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                ),
                child: ListView(
                  padding:
                      EdgeInsets.only(left: 32, top: 32, right: 16, bottom: 16),
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    ItemList(
                      item: Item(
                          nome: 'Pizza de Arroz',
                          image:
                          'assets/food/prato_01.png',
                          preco: '25.0'),
                    ),
                    ItemList(
                      item: Item(
                          nome: 'Carne ao monte de molho',
                          image:
                          'assets/food/prato_01.png',
                          preco: '15.0'),
                    ),
                    ItemList(
                      item: Item(
                          nome: 'Arroz com carne',
                          image:
                          'assets/food/prato_01.png',
                          preco: '15.0'),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
//      bottomNavigationBar: ,
    );
  }
}
