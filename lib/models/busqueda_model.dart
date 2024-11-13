// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class BuscarModel {
  final int id_Negocio;
  final int? id_Producto;
  final int? id_servicio;
  final String negocio;
  final String nombre;
  final String descripsion;
  final String imagen;
  BuscarModel({
    required this.id_Negocio,
    required this.id_Producto,
    required this.id_servicio,
    required this.negocio,
    required this.nombre,
    required this.descripsion,
    required this.imagen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_Negocio': id_Negocio,
      'id_Producto': id_Producto,
      'id_servicio': id_servicio,
      'negocio': negocio,
      'nombre': nombre,
      'descripsion': descripsion,
      'imagen': imagen,
    };
  }

  factory BuscarModel.fromMap(Map<String, dynamic> map) {
    return BuscarModel(
      id_Negocio: map['id_Negocio'] as int,
      id_Producto: map['id_Producto'] != null ? map['id_Producto'] as int : null,
      id_servicio: map['id_servicio'] != null ? map['id_servicio'] as int : null,
      negocio: map['negocio'] as String,
      nombre: map['nombre'] as String,
      descripsion: map['descripsion'] as String,
      imagen: map['imagen'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BuscarModel.fromJson(String source) => BuscarModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
