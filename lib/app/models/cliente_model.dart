import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ClienteModel {
  final int id;
  final String name;
  final int cpf;
  final String end;
  final String num;
  final String cidade;
  final String uf;
  final String add;
  
  ClienteModel({
    required this.id,
    required this.name,
    required this.cpf,
    required this.end,
    required this.num,
    required this.cidade,
    required this.uf,
    required this.add,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'cpf': cpf,
      'end': end,
      'num': num,
      'cidade': cidade,
      'uf': uf,
      'add': add,
    };
  }

  factory ClienteModel.fromMap(Map<String, dynamic> map) {
    return ClienteModel(
      id: map['id'] as int,
      name: map['name'] as String,
      cpf: map['cpf'] as int,
      end: map['end'] as String,
      num: map['num'] as String,
      cidade: map['cidade'] as String,
      uf: map['uf'] as String,
      add: map['add'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClienteModel.fromJson(String source) => ClienteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  ClienteModel copyWith({
    int? id,
    String? name,
    int? cpf,
    String? end,
    String? num,
    String? cidade,
    String? uf,
    String? add,
  }) {
    return ClienteModel(
      id: id ?? this.id,
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      end: end ?? this.end,
      num: num ?? this.num,
      cidade: cidade ?? this.cidade,
      uf: uf ?? this.uf,
      add: add ?? this.add,
    );
  }
}
