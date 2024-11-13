import 'dart:convert';

class ServicioModel {
  final int id_servicio;
  final String nombre;
  final String descripcion;
  final String imagen;
  final int unidad;
  final String creado;
  final String actualizado;
  ServicioModel({
    required this.id_servicio,
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.unidad,
    required this.creado,
    required this.actualizado,
  });

  ServicioModel copyWith({
    int? id_servicio,
    String? nombre,
    String? descripcion,
    String? imagen,
    int? unidad,
    String? creado,
    String? actualizado,
  }) {
    return ServicioModel(
      id_servicio: id_servicio ?? this.id_servicio,
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
      id_servicio: map['id_servicio'].toInt() as int,
      nombre: map['nombre'] as String,
      descripcion: map['descripcion'] as String,
      imagen: map['imagen'] as String,
      unidad: map['unidad'].toInt() as int,
      creado: map['creado'] as String,
      actualizado: map['actualizado'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServicioModel.fromJson(String source) => ServicioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ServicioModel(id_servicio: $id_servicio, nombre: $nombre, descripcion: $descripcion, imagen: $imagen, unidad: $unidad, creado: $creado, actualizado: $actualizado)';
  }

  @override
  bool operator ==(covariant ServicioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_servicio == id_servicio &&
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
      nombre.hashCode ^
      descripcion.hashCode ^
      imagen.hashCode ^
      unidad.hashCode ^
      creado.hashCode ^
      actualizado.hashCode;
  }
}