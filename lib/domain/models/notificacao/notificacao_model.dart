import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class NotificacaoModel {
  int? id;
  String? titulo;
  String? corpoTexto;
  bool? lida;
  NotificacaoModel({
    this.id,
    this.titulo,
    this.corpoTexto,
    this.lida,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'titulo': titulo,
      'corpoTexto': corpoTexto,
      'lida': lida,
    };
  }

  factory NotificacaoModel.fromMap(Map<String, dynamic> map) {
    return NotificacaoModel(
      id: map['id'] != null ? map['id'] as int : null,
      titulo: map['titulo'] != null ? map['titulo'] as String : null,
      corpoTexto: map['corpoTexto'] != null ? map['corpoTexto'] as String : null,
      lida: map['lida'] != null ? map['lida'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificacaoModel.fromJson(String source) => NotificacaoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
