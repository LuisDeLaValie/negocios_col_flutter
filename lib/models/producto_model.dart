// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductoModel {
  final int id_Producto;
  final int id_Negocio;
  final String nombre;
  final String descripsion;
  final String imagen;
  final int unidad;
  final String creado;
  final String actualizado;
  ProductoModel({
    required this.id_Producto,
    required this.id_Negocio,
    required this.nombre,
    required this.descripsion,
    required this.imagen,
    required this.unidad,
    required this.creado,
    required this.actualizado,
  });

  ProductoModel copyWith({
    int? id_Producto,
    int? id_Negocio,
    String? nombre,
    String? descripsion,
    String? imagen,
    int? unidad,
    String? creado,
    String? actualizado,
  }) {
    return ProductoModel(
      id_Producto: id_Producto ?? this.id_Producto,
      id_Negocio: id_Negocio ?? this.id_Negocio,
      nombre: nombre ?? this.nombre,
      descripsion: descripsion ?? this.descripsion,
      imagen: imagen ?? this.imagen,
      unidad: unidad ?? this.unidad,
      creado: creado ?? this.creado,
      actualizado: actualizado ?? this.actualizado,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_Producto': id_Producto,
      'id_Negocio': id_Negocio,
      'nombre': nombre,
      'descripsion': descripsion,
      'imagen': imagen,
      'unidad': unidad,
      'creado': creado,
      'actualizado': actualizado,
    };
  }

  factory ProductoModel.fromMap(Map<String, dynamic> map) {
    return ProductoModel(
      id_Producto: map['id_Producto'] as int,
      id_Negocio: map['id_Negocio'] as int,
      nombre: map['nombre'] as String,
      descripsion: map['descripsion'] as String,
      imagen: map['imagen'] as String,
      unidad: map['unidad'] as int,
      creado: map['creado'] as String,
      actualizado: map['actualizado'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductoModel.fromJson(String source) => ProductoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductoModel(id_Producto: $id_Producto, id_Negocio: $id_Negocio, nombre: $nombre, descripsion: $descripsion, imagen: $imagen, unidad: $unidad, creado: $creado, actualizado: $actualizado)';
  }

  @override
  bool operator ==(covariant ProductoModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_Producto == id_Producto &&
      other.id_Negocio == id_Negocio &&
      other.nombre == nombre &&
      other.descripsion == descripsion &&
      other.imagen == imagen &&
      other.unidad == unidad &&
      other.creado == creado &&
      other.actualizado == actualizado;
  }

  @override
  int get hashCode {
    return id_Producto.hashCode ^
      id_Negocio.hashCode ^
      nombre.hashCode ^
      descripsion.hashCode ^
      imagen.hashCode ^
      unidad.hashCode ^
      creado.hashCode ^
      actualizado.hashCode;
  }
  }
