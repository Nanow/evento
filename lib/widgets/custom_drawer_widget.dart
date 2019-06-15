import 'package:evento/screens/olamundo_screen.dart';
import 'package:evento/screens/tutorial1_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Olá Mundo'),
            onTap: () {
              _changePage(context, OlaMundoScreen());
            },
          ),
          ListTile(
            title: Text('Tutorial 1'),
            onTap: () {
              _changePage(context, Tutorial1Screen());
            },
          )
        ],
      ),
    );
  }

  _changePage(BuildContext context, Widget widget) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
