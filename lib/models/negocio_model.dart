import 'dart:convert';

class NegocioModel {
  final int id_Negocio;
  final String nombre;
  final String descripsion;
  final String direccion;
  final String telefono;
  final String correo;
  final String imagen;
  final double latitude;
  final double longitude;
  final String facebook;
  final String twitter;
  final String instagram;
  final String website;
  final String creado;
  final String actualizado;
  NegocioModel({
    required this.id_Negocio,
    required this.nombre,
    required this.descripsion,
    required this.direccion,
    required this.telefono,
    required this.correo,
    required this.imagen,
    required this.latitude,
    required this.longitude,
    required this.facebook,
    required this.twitter,
    required this.instagram,
    required this.website,
    required this.creado,
    required this.actualizado,
  });

  NegocioModel copyWith({
    int? id_Negocio,
    String? nombre,
    String? descripsion,
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
    String? creado,
    String? actualizado,
  }) {
    return NegocioModel(
      id_Negocio: id_Negocio ?? this.id_Negocio,
      nombre: nombre ?? this.nombre,
      descripsion: descripsion ?? this.descripsion,
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
      'descripsion': descripsion,
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
      'creado': creado,
      'actualizado': actualizado,
    };
  }

  factory NegocioModel.fromMap(Map<String, dynamic> map) {
    return NegocioModel(
      id_Negocio: map['id_Negocio'].toInt() as int,
      nombre: map['nombre'] as String,
      descripsion: map['descripsion'] as String,
      direccion: map['direccion'] as String,
      telefono: map['telefono'] as String,
      correo: map['correo'] as String,
      imagen: map['imagen'] as String,
      latitude: map['latitude'].toDouble() as double,
      longitude: map['longitude'].toDouble() as double,
      facebook: map['facebook'] as String,
      twitter: map['twitter'] as String,
      instagram: map['instagram'] as String,
      website: map['website'] as String,
      creado: map['creado'] as String,
      actualizado: map['actualizado'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NegocioModel.fromJson(String source) => NegocioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NegocioModel(id_Negocio: $id_Negocio, nombre: $nombre, descripsion: $descripsion, direccion: $direccion, telefono: $telefono, correo: $correo, imagen: $imagen, latitude: $latitude, longitude: $longitude, facebook: $facebook, twitter: $twitter, instagram: $instagram, website: $website, creado: $creado, actualizado: $actualizado)';
  }

  @override
  bool operator ==(covariant NegocioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id_Negocio == id_Negocio &&
      other.nombre == nombre &&
      other.descripsion == descripsion &&
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
      descripsion.hashCode ^
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