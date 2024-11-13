import 'dart:async';

import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/busqueda_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';

class BuscarPage extends StatefulWidget {
  const BuscarPage({super.key});

  @override
  State<BuscarPage> createState() => _BuscarPageState();
}

class _BuscarPageState extends State<BuscarPage> {
  List<BuscarModel> resultados = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: TextField(
          autofocus: true,
          onChanged: search,
          decoration: const InputDecoration(
            hintText: "Buscar",
            border: OutlineInputBorder(),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final data = resultados[index];

            if (data.id_Producto != null || data.id_servicio != null) {
              return ListTile(
                title: Text(data.nombre),
                subtitle: Text(data.descripsion),
                leading: Image.network(data.imagen),
              );
            }

            return ListTile(
              title: Text(data.nombre),
              subtitle: Text(data.descripsion),
              leading: Image.network(data.imagen),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: resultados.length),
    );
  }

  Timer? _debounce;
  final Duration debounceDuration =
      const Duration(milliseconds: 500); // Tiempo de debounce

  void search(String query) {
    // Cancelar el debounce anterior si existe
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    // Configurar el nuevo debounce
    _debounce = Timer(debounceDuration, () async {
      // Aquí va la lógica que se ejecutará después del tiempo de debounce
      final data = await NegociosColApi().buscar(query);

      if (data == null) {
        resultados = [];
      }

      resultados = data!;
      setState(() {}); // Actualizar la lista de resultados en el widget Flutter
    });
  }
}
