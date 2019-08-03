import 'package:meta/meta.dart';

class Local {
  String lat;
  String long;
  String nome;
  String telefone;
  String descricao;
  String imagem;

  Local(
      {@required this.lat,
      @required this.long,
      @required this.nome,
      @required this.telefone,
      @required this.descricao,
      @required this.imagem});
}
