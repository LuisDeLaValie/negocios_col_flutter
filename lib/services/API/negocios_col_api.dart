import 'dart:convert';

import 'package:http/http.dart' as http;
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
      var response = await client.get(Uri.parse("$api/api/producto/lasts"));
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
}
