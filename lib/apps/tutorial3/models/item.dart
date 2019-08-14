import 'package:flutter/foundation.dart';

class Item {
  final String nome;
  final String preco;
  final String image;

  Item({@required this.nome, @required this.preco, @required this.image});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Item &&
              runtimeType == other.runtimeType &&
              nome == other.nome;

  @override
  int get hashCode =>
      nome.hashCode ^
      preco.hashCode ^
      image.hashCode;



}
