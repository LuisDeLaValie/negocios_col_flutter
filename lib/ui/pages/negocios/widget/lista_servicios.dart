// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:tdtxle_data_format/extenciones/number_extents.dart';

class ListaServicios extends StatelessWidget {
  final List<ItemServicio> productos;
  const ListaServicios({
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
              leading: CircleAvatar(backgroundImage: NetworkImage(e.imagen)),
              trailing: Text(e.precio.toMOney()),
              onTap: () {
                final currentPath = context.router.currentPath;
                print('currentPath: $currentPath');

                context.router.pushNamed('$currentPath/servicio/${e.id}');
              },
            ),
          )
          .toList(),
    );
  }
}

class ItemServicio {
  final String titulo;
  final String detalle;
  final double precio;
  final String imagen;
  final int id;

  ItemServicio(
      {required this.id,
      required this.titulo,
      required this.detalle,
      required this.precio,
      required this.imagen});
}
