// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NegocioModel {
  final int? id_Negocio;
  final String nombre;
  final String? password;
  final String descripcion;
  final String direccion;
  final String telefono;
  final String correo;
  final String? imagen;
  final double latitude;
  final double longitude;
  final String? facebook;
  final String? twitter;
  final String? instagram;
  final String? website;
  final DateTime? creado;
  final DateTime? actualizado;
  NegocioModel({
    this.id_Negocio,
    required this.nombre,
    this.password,
    required this.descripcion,
    required this.direccion,
    required this.telefono,
    required this.correo,
    this.imagen,
    required this.latitude,
    required this.longitude,
    this.facebook,
    this.twitter,
    this.instagram,
    this.website,
    this.creado,
    this.actualizado,
  });

  NegocioModel copyWith({
    int? id_Negocio,
    String? nombre,
    String? password,
    String? descripcion,
    String? direccion,
    String? telefono,
    String? correo,
    String? imagen,
    double? latitude,
    double? longitude,
    String? facebook,
    String? twitter,
    String? instagram,
    String? website,
    DateTime? creado,
    DateTime? actualizado,
  }) {
    return NegocioModel(
      id_Negocio: id_Negocio ?? this.id_Negocio,
      nombre: nombre ?? this.nombre,
      password: password ?? this.password,
      descripcion: descripcion ?? this.descripcion,
      direccion: direccion ?? this.direccion,
      telefono: telefono ?? this.telefono,
      correo: correo ?? this.correo,
      imagen: imagen ?? this.imagen,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      facebook: facebook ?? this.facebook,
      twitter: twitter ?? this.twitter,
      instagram: instagram ?? this.instagram,
      website: website ?? this.website,
      creado: creado ?? this.creado,
      actualizado: actualizado ?? this.actualizado,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_Negocio': id_Negocio,
      'nombre': nombre,
      'password': password,
      'descripcion': descripcion,
      'direccion': direccion,
      'telefono': telefono,
      'correo': correo,
      'imagen': imagen,
      'latitude': latitude,
      'longitude': longitude,
      'facebook': facebook,
      'twitter': twitter,
      'instagram': instagram,
      'website': website,
      'creado': creado?.millisecondsSinceEpoch,
      'actualizado': actualizado?.millisecondsSinceEpoch,
    };
  }

  factory NegocioModel.fromMap(Map<String, dynamic> map) {
    return NegocioModel(
      id_Negocio: map['id_Negocio'] != null ? map['id_Negocio'] as int : null,
      nombre: map['nombre'] as String,
      password: map['password'] != null ? map['password'] as String : null,
      descripcion: map['descripcion'] as String,
      direccion: map['direccion'] as String,
      telefono: map['telefono'] as String,
      correo: map['correo'] as String,
      imagen: map['imagen'] != null ? map['imagen'] as String : null,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      facebook: map['facebook'] != null ? map['facebook'] as String : null,
      twitter: map['twitter'] != null ? map['twitter'] as String : null,
      instagram: map['instagram'] != null ? map['instagram'] as String : null,
      website: map['website'] != null ? map['website'] as String : null,
      creado: map['creado'] != null ? DateTime.parse(map['creado'] as String) : null,
      actualizado: map['actualizado'] != null ? DateTime.parse(map['actualizado'] as String) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NegocioModel.fromJson(String source) => NegocioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NegocioModel(id_Negocio: $id_Negocio, nombre: $nombre, password: $password, descripcion: $descripcion, direccion: $direccion, telefono: $telefono, correo: $correo, imagen: $imagen, latitude: $latitude, longitude: $longitude, facebook: $facebook, twitter: $twitter, instagram: $instagram, website: $website, creado: $creado, actualizado: $actualizado)';
  }

  @override
  bool operator ==(covariant NegocioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_Negocio == id_Negocio &&
      other.nombre == nombre &&
      other.password == password &&
      other.descripcion == descripcion &&
      other.direccion == direccion &&
      other.telefono == telefono &&
      other.correo == correo &&
      other.imagen == imagen &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.facebook == facebook &&
      other.twitter == twitter &&
      other.instagram == instagram &&
      other.website == website &&
      other.creado == creado &&
      other.actualizado == actualizado;
  }

  @override
  int get hashCode {
    return id_Negocio.hashCode ^
      nombre.hashCode ^
      password.hashCode ^
      descripcion.hashCode ^
      direccion.hashCode ^
      telefono.hashCode ^
      correo.hashCode ^
      imagen.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      facebook.hashCode ^
      twitter.hashCode ^
      instagram.hashCode ^
      website.hashCode ^
      creado.hashCode ^
      actualizado.hashCode;
  }
}
