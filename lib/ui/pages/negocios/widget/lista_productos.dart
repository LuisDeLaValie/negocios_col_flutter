// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tdtxle_data_format/extenciones/number_extents.dart';

class ListaProductos extends StatelessWidget {
  final List<ItemProducto> productos;
  const ListaProductos({
    super.key,
    required this.productos,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: productos
          .map(
            (e) => ListTile(
              title: Text(e.titulo),
              subtitle: Text(e.detalle),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(e.imagen),
              ),
              trailing: Text(e.precio.toMOney()),
            ),
          )
          .toList(),
    );
  }
}

class ItemProducto {
  final String titulo;
  final String detalle;
  final double precio;
  final String imagen;

  ItemProducto(
      {required this.titulo,
      required this.detalle,
      required this.precio,
      required this.imagen});
}
