import 'dart:async';

import 'package:flutter/material.dart';

class BuscarPage extends StatefulWidget {
  const BuscarPage({super.key});

  @override
  State<BuscarPage> createState() => _BuscarPageState();
}

class _BuscarPageState extends State<BuscarPage> {
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
          itemBuilder: (context, index) => const ListTile(
                title: Text("Titulo"),
                subtitle: Text("Subtitulo"),
                leading: Icon(Icons.abc),
              ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: 10),
    );
  }

  Timer? _debounce;
  final Duration debounceDuration =
      const Duration(milliseconds: 500); // Tiempo de debounce

  void search(String query) {
    // Cancelar el debounce anterior si existe
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    // Configurar el nuevo debounce
    _debounce = Timer(debounceDuration, () {
      // Aquí va la lógica que se ejecutará después del tiempo de debounce
      print("Texto ingresado: $query");
    });
  }
}
