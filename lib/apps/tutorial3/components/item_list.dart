import 'package:evento/apps/tutorial3/models/item.dart';
import 'package:evento/apps/tutorial3/screens/food_detail_screen.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodDetailScreen(item: this.item)),
            );
          },
          child: Hero(
            tag: this.item.hashCode,
            child: Image.asset(
              item.image,
              height: 75,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(item.nome),
                Text(
                  'R\$ ${item.preco}',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        )
      ],
    );
  }
}
