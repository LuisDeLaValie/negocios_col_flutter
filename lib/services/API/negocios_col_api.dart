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

  Future<List<ServicioModel>> getLastServicio() async {
    final client = http.Client();
    try {
      var response = await client.get(Uri.parse("$api/api/servicios/lasts"));
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
}
