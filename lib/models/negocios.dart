import 'dart:convert';

class NegocioModel {
  final int Id_Negocio;
  final String Nombre;
  final String Descripsion;
  final String Direccion;
  final String Telefono;
  final String Correo;
  final String Imagen;
  final double Latitude;
  final double Longitude;
  final String Facebook;
  final String Twitter;
  final String Instagram;
  final String Website;
  final String Creado;
  final String Actualizado;
  NegocioModel({
    required this.Id_Negocio,
    required this.Nombre,
    required this.Descripsion,
    required this.Direccion,
    required this.Telefono,
    required this.Correo,
    required this.Imagen,
    required this.Latitude,
    required this.Longitude,
    required this.Facebook,
    required this.Twitter,
    required this.Instagram,
    required this.Website,
    required this.Creado,
    required this.Actualizado,
  });

  NegocioModel copyWith({
    int? Id_Negocio,
    String? Nombre,
    String? Descripsion,
    String? Direccion,
    String? Telefono,
    String? Correo,
    String? Imagen,
    double? Latitude,
    double? Longitude,
    String? Facebook,
    String? Twitter,
    String? Instagram,
    String? Website,
    String? Creado,
    String? Actualizado,
  }) {
    return NegocioModel(
      Id_Negocio: Id_Negocio ?? this.Id_Negocio,
      Nombre: Nombre ?? this.Nombre,
      Descripsion: Descripsion ?? this.Descripsion,
      Direccion: Direccion ?? this.Direccion,
      Telefono: Telefono ?? this.Telefono,
      Correo: Correo ?? this.Correo,
      Imagen: Imagen ?? this.Imagen,
      Latitude: Latitude ?? this.Latitude,
      Longitude: Longitude ?? this.Longitude,
      Facebook: Facebook ?? this.Facebook,
      Twitter: Twitter ?? this.Twitter,
      Instagram: Instagram ?? this.Instagram,
      Website: Website ?? this.Website,
      Creado: Creado ?? this.Creado,
      Actualizado: Actualizado ?? this.Actualizado,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Id_Negocio': Id_Negocio,
      'Nombre': Nombre,
      'Descripsion': Descripsion,
      'Direccion': Direccion,
      'Telefono': Telefono,
      'Correo': Correo,
      'Imagen': Imagen,
      'Latitude': Latitude,
      'Longitude': Longitude,
      'Facebook': Facebook,
      'Twitter': Twitter,
      'Instagram': Instagram,
      'Website': Website,
      'Creado': Creado,
      'Actualizado': Actualizado,
    };
  }

  factory NegocioModel.fromMap(Map<String, dynamic> map) {
    return NegocioModel(
      Id_Negocio: map['id_Negocio'].toInt() as int,
      Nombre: map['nombre'] as String,
      Descripsion: map['descripsion'] as String,
      Direccion: map['direccion'] as String,
      Telefono: map['telefono'] as String,
      Correo: map['correo'] as String,
      Imagen: map['imagen'] as String,
      Latitude: map['latitude'].toDouble() as double,
      Longitude: map['longitude'].toDouble() as double,
      Facebook: map['facebook'] as String,
      Twitter: map['twitter'] as String,
      Instagram: map['instagram'] as String,
      Website: map['website'] as String,
      Creado: map['creado'] as String,
      Actualizado: map['actualizado'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NegocioModel.fromJson(String source) => NegocioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NegocioModel(Id_Negocio: $Id_Negocio, Nombre: $Nombre, Descripsion: $Descripsion, Direccion: $Direccion, Telefono: $Telefono, Correo: $Correo, Imagen: $Imagen, Latitude: $Latitude, Longitude: $Longitude, Facebook: $Facebook, Twitter: $Twitter, Instagram: $Instagram, Website: $Website, Creado: $Creado, Actualizado: $Actualizado)';
  }

  @override
  bool operator ==(covariant NegocioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.Id_Negocio == Id_Negocio &&
      other.Nombre == Nombre &&
      other.Descripsion == Descripsion &&
      other.Direccion == Direccion &&
      other.Telefono == Telefono &&
      other.Correo == Correo &&
      other.Imagen == Imagen &&
      other.Latitude == Latitude &&
      other.Longitude == Longitude &&
      other.Facebook == Facebook &&
      other.Twitter == Twitter &&
      other.Instagram == Instagram &&
      other.Website == Website &&
      other.Creado == Creado &&
      other.Actualizado == Actualizado;
  }

  @override
  int get hashCode {
    return Id_Negocio.hashCode ^
      Nombre.hashCode ^
      Descripsion.hashCode ^
      Direccion.hashCode ^
      Telefono.hashCode ^
      Correo.hashCode ^
      Imagen.hashCode ^
      Latitude.hashCode ^
      Longitude.hashCode ^
      Facebook.hashCode ^
      Twitter.hashCode ^
      Instagram.hashCode ^
      Website.hashCode ^
      Creado.hashCode ^
      Actualizado.hashCode;
  }
}