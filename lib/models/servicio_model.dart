// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ServicioModel {
  final int? id_servicio;
  final int id_Negocio;
  final int precio;
  final String nombre;
  final String descripcion;
  final String imagen;
  final int unidad;
  final String? creado;
  final String? actualizado;
  ServicioModel({
    this.id_servicio,
    required this.id_Negocio,
    required this.precio,
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.unidad,
    this.creado,
    this.actualizado,
  });

  ServicioModel copyWith({
    int? id_servicio,
    int? id_Negocio,
    int? precio,
    String? nombre,
    String? descripcion,
    String? imagen,
    int? unidad,
    String? creado,
    String? actualizado,
  }) {
    return ServicioModel(
      id_servicio: id_servicio ?? this.id_servicio,
      id_Negocio: id_Negocio ?? this.id_Negocio,
      precio: precio ?? this.precio,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      imagen: imagen ?? this.imagen,
      unidad: unidad ?? this.unidad,
      creado: creado ?? this.creado,
      actualizado: actualizado ?? this.actualizado,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_servicio': id_servicio,
      'id_Negocio': id_Negocio,
      'precio': precio,
      'nombre': nombre,
      'descripcion': descripcion,
      'imagen': imagen,
      'unidad': unidad,
      'creado': creado,
      'actualizado': actualizado,
    };
  }

  factory ServicioModel.fromMap(Map<String, dynamic> map) {
    return ServicioModel(
      id_servicio: map['id_servicio'] != null ? map['id_servicio'] as int : null,
      id_Negocio: map['id_Negocio'] as int,
      precio: map['precio'] as int,
      nombre: map['nombre'] as String,
      descripcion: map['descripcion'] as String,
      imagen: map['imagen'] as String,
      unidad: map['unidad'] as int,
      creado: map['creado'] != null ? map['creado'] as String : null,
      actualizado: map['actualizado'] != null ? map['actualizado'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServicioModel.fromJson(String source) => ServicioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ServicioModel(id_servicio: $id_servicio, id_Negocio: $id_Negocio, precio: $precio, nombre: $nombre, descripcion: $descripcion, imagen: $imagen, unidad: $unidad, creado: $creado, actualizado: $actualizado)';
  }

  @override
  bool operator ==(covariant ServicioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_servicio == id_servicio &&
      other.id_Negocio == id_Negocio &&
      other.precio == precio &&
      other.nombre == nombre &&
      other.descripcion == descripcion &&
      other.imagen == imagen &&
      other.unidad == unidad &&
      other.creado == creado &&
      other.actualizado == actualizado;
  }

  @override
  int get hashCode {
    return id_servicio.hashCode ^
      id_Negocio.hashCode ^
      precio.hashCode ^
      nombre.hashCode ^
      descripcion.hashCode ^
      imagen.hashCode ^
      unidad.hashCode ^
      creado.hashCode ^
      actualizado.hashCode;
  }
}
