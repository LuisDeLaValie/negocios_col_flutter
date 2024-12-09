import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:negocios_col_flutter/models/busqueda_model.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';

class NegociosColApi {
  final String api = "http://localhost:8081";

  Future<List<NegocioModel>> getLastNegocios() async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/negocios/lasts"));
      if (jsonDecode(response.body) == null) {
        return [];
      }
      var data = jsonDecode(response.body) as List<dynamic>;
      return List.generate(
          data.length, (index) => NegocioModel.fromMap(data[index]));
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<List<ProductoModel>> getLastProducto() async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/productos/lasts"));
      if (jsonDecode(response.body) == null) {
        return [];
      }
      var data = jsonDecode(response.body) as List<dynamic>;
      return List.generate(
          data.length, (index) => ProductoModel.fromMap(data[index]));
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<ProductoModel> crearProducto(ProductoModel negocio) async {
    final client = http.Client();
    try {
      final uri = Uri.parse('$api/api/productos'); // URL de tu endpoint
      final request = http.MultipartRequest('POST', uri);

      request.fields['Nombre'] = negocio.nombre;
      request.fields['Descripcion'] = negocio.descripsion;
      // request.fields['Imagen'] = negocio.id_Negocio!.toString();
      request.fields['Precio'] = negocio.precio.toString();
      request.fields['Unidad'] = negocio.unidad.toString();
      request.fields['Negocio'] = negocio.id_Negocio.toString();

      // Adjuntar la imagen si existe
      if (negocio.imagen != null) {
        final imagenMultipart =
            await http.MultipartFile.fromPath('Imagen', negocio.imagen!);
        request.files.add(imagenMultipart);
      }

// Enviar la solicitud
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      var data = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) throw new Exception(data);
      return ProductoModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<ServicioModel> crearServicio(ServicioModel negocio) async {
    final client = http.Client();
    try {
      final uri = Uri.parse('$api/api/servicios'); // URL de tu endpoint
      final request = http.MultipartRequest('POST', uri);

      request.fields['Nombre'] = negocio.nombre;
      request.fields['Descripcion'] = negocio.descripcion;
      // request.fields['Imagen'] = negocio.id_Negocio!.toString();
      request.fields['Precio'] = negocio.precio.toString();
      request.fields['Unidad'] = negocio.unidad.toString();
      request.fields['Negocio'] = negocio.id_Negocio.toString();

      // Adjuntar la imagen si existe
      if (negocio.imagen != null) {
        final imagenMultipart =
            await http.MultipartFile.fromPath('Imagen', negocio.imagen!);
        request.files.add(imagenMultipart);
      }

// Enviar la solicitud
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      var data = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) throw  Exception(data);
      return ServicioModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<List<ServicioModel>> getLastServicio() async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/servicios/lasts"));
      if (jsonDecode(response.body) == null) {
        return [];
      }
      var data = jsonDecode(response.body) as List<dynamic>;
      return List.generate(
          data.length, (index) => ServicioModel.fromMap(data[index]));
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<List<BuscarModel>?> buscar(String busqueda) async {
    final client = http.Client();
    try {
      var response =
          await client.get(Uri.parse("$api/api/buscar?buscar=$busqueda"));
      var data = jsonDecode(response.body);
      if (data == null) {
        return null;
      }
      return List.generate((data as List<dynamic>).length,
          (index) => BuscarModel.fromMap(data[index]));
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<NegocioModel?> getNegocio(int negocio) async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/negocios/$negocio"));
      var data = jsonDecode(response.body);
      if (data == null) {
        return null;
      }
      return NegocioModel.fromMap(data as dynamic);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<List<ServicioModel>?> getServicioNegocio(int negocio) async {
    final client = http.Client();
    try {
      var response =
          await client.get(Uri.parse("$api/api/negocios/servisios/$negocio"));
      var data = jsonDecode(response.body);
      if (data == null) return null;

      var dataValue = jsonDecode(response.body) as List<dynamic>;
      return List.generate(
          dataValue.length, (index) => ServicioModel.fromMap(data[index]));
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<List<ProductoModel>?> getProductosNegocio(int negocio) async {
    final client = http.Client();
    try {
      var response =
          await client.get(Uri.parse("$api/api/negocios/productos/$negocio"));
      var data = jsonDecode(response.body);
      if (data == null) return null;

      var dataValue = jsonDecode(response.body) as List<dynamic>;
      return List.generate(
          dataValue.length, (index) => ProductoModel.fromMap(data[index]));
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<ProductoModel> getProducto(int id) async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/productos/$id"));
      var data = jsonDecode(response.body) as Map<String, dynamic>;
      return ProductoModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<ServicioModel> getServicio(int id) async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/servicios/$id"));
      var data = jsonDecode(response.body) as Map<String, dynamic>;
      return ServicioModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<NegocioModel> crearNegocio(NegocioModel negocio) async {
    final client = http.Client();
    try {
      final uri = Uri.parse('$api/api/negocios'); // URL de tu endpoint
      final request = http.MultipartRequest('POST', uri);

      if (negocio.id_Negocio != null)
        request.fields['id_Negocio'] = negocio.id_Negocio!.toString();
      request.fields['nombre'] = negocio.nombre;
      if (negocio.password != null)
        request.fields['password'] = negocio.password!;
      request.fields['descripcion'] = negocio.descripcion;
      request.fields['direccion'] = negocio.direccion;
      request.fields['telefono'] = negocio.telefono;
      request.fields['correo'] = negocio.correo;
      if (negocio.latitude != null)
        request.fields['latitude'] = negocio.latitude!.toString();
      if (negocio.longitude != null)
        request.fields['longitude'] = negocio.longitude!.toString();
      if (negocio.facebook != null)
        request.fields['facebook'] = negocio.facebook!;
      if (negocio.twitter != null) request.fields['twitter'] = negocio.twitter!;
      if (negocio.instagram != null)
        request.fields['instagram'] = negocio.instagram!;
      if (negocio.website != null) request.fields['website'] = negocio.website!;
      if (negocio.creado != null)
        request.fields['creado'] = negocio.creado!.toIso8601String();
      if (negocio.actualizado != null)
        request.fields['actualizado'] = negocio.actualizado!.toIso8601String();

      // Adjuntar la imagen si existe
      if (negocio.imagen != null) {
        final imagenMultipart =
            await http.MultipartFile.fromPath('imagen', negocio.imagen!);
        request.files.add(imagenMultipart);
      }

// Enviar la solicitud
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      var data = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) throw new Exception(data);
      return NegocioModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<NegocioModel> editarNegocio(int id, NegocioModel negocio) async {
    final client = http.Client();
    try {
      final uri = Uri.parse('$api/api/negocios/$id'); // URL de tu endpoint
      final request = http.MultipartRequest('PUT', uri);

      if (negocio.id_Negocio != null)
        request.fields['id_Negocio'] = negocio.id_Negocio!.toString();
      request.fields['nombre'] = negocio.nombre;
      if (negocio.password != null)
        request.fields['password'] = negocio.password!;
      request.fields['descripcion'] = negocio.descripcion;
      request.fields['direccion'] = negocio.direccion;
      request.fields['telefono'] = negocio.telefono;
      request.fields['correo'] = negocio.correo;
      // if (negocio.latitude != null) request.fields['latitude'] = negocio.latitude!.toString();
      // if (negocio.longitude != null) request.fields['longitude'] = negocio.longitude!.toString();
      if (negocio.facebook != null)
        request.fields['facebook'] = negocio.facebook!;
      if (negocio.twitter != null) request.fields['twitter'] = negocio.twitter!;
      if (negocio.instagram != null)
        request.fields['instagram'] = negocio.instagram!;
      if (negocio.website != null) request.fields['website'] = negocio.website!;
      if (negocio.creado != null)
        request.fields['creado'] = negocio.creado!.toIso8601String();
      if (negocio.actualizado != null)
        request.fields['actualizado'] = negocio.actualizado!.toIso8601String();

      // Adjuntar la imagen si existe
      if (negocio.imagen != null) {
        final imagenMultipart =
            await http.MultipartFile.fromPath('imagen', negocio.imagen!);
        request.files.add(imagenMultipart);
      }

// Enviar la solicitud
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      var data = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) throw new Exception(data);
      return NegocioModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  Future<NegocioModel> loginNegocio(String correo, String pass) async {
    final client = http.Client();
    try {
      final json = jsonEncode({"Correo": correo, "Password": pass});
      print(json);
      var response = await client.post(
        Uri.parse("$api/api/login"),
        body: json,
      );
      var data = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) throw new Exception(data);
      return NegocioModel.fromMap(data);
    } catch (e) {
      print('Error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }
}
