import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0BC1BF),
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
        title: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 14,
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.only(top: 8, left: 32),

                child: Row(
                  children: <Widget>[
                    Text('Healthy ', style: TextStyle(fontSize: 28, color: Colors.white, fontFamily: 'Montserrat', fontWeight: FontWeight.bold), ),
                    Text('Food', style: TextStyle(fontSize: 28, color: Colors.white, fontFamily: 'Montserrat'), ),

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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                children: <Widget>[
                  CircleAvatar(child: Image.network(''),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
