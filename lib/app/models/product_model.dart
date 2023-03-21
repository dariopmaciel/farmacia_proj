import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductModel {
  final int id;
  final String name;
  final String tipo;
  final String qtd;
  final String fabricante;
  final String bula;
  final double price;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.tipo,
    required this.qtd,
    required this.fabricante,
    required this.bula,
    required this.price,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'tipo': tipo,
      'qtd': qtd,
      'fabricante': fabricante,
      'bula': bula,
      'price': price,
      'image': image,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      name: map['name'] as String,
      tipo: map['tipo'] as String,
      qtd: map['qtd'] as String,
      fabricante: map['fabricante'] as String,
      bula: map['bula'] as String,
      price: map['price'] as double,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  ProductModel copyWith({
    int? id,
    String? name,
    String? tipo,
    String? qtd,
    String? fabricante,
    String? bula,
    double? price,
    String? image,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      tipo: tipo ?? this.tipo,
      qtd: qtd ?? this.qtd,
      fabricante: fabricante ?? this.fabricante,
      bula: bula ?? this.bula,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }
}
