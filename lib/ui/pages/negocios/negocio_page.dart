// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:negocios_col_flutter/ui/pages/negocios/widget/lista_productos.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widget/header_negocios.dart';

@RoutePage()
class NegocioPage extends StatefulWidget {
  final int idNegocio;
  const NegocioPage({
    super.key,
    @PathParam('negocio') required this.idNegocio,
  });

  @override
  State<NegocioPage> createState() => _NegocioPageState();
}

class _NegocioPageState extends State<NegocioPage> {
  NegocioModel? negocio;
  List<ServicioModel>? servicios;
  List<ProductoModel>? productos;

  @override
  void initState() {
    print('negocios pages');
    getData();

    super.initState();
  }

  Future<void> getData() async {
    negocio = await NegociosColApi().getNegocio(widget.idNegocio);

    servicios = await NegociosColApi().getServicioNegocio(widget.idNegocio);

    productos = await NegociosColApi().getProductosNegocio(widget.idNegocio);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderNegocio(negocio: negocio),
            if (productos != null && servicios != null)
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Productos",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Servicios",
                    ),
                  ),
                ],
              ),
            if (productos != null)
              Expanded(
                child: ListaProductos(
                  productos: productos!
                      .map(
                        (e) => ItemProducto(
                            id: e.id_Producto,
                            titulo: e.nombre,
                            detalle: e.descripsion,
                            precio: 25.4,
                            imagen: e.imagen),
                      )
                      .toList(),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final Uri tel = Uri(
            scheme: 'tel',
            path: negocio!.telefono,
          );
          launchUrl(tel);
        },
        label: const Text(
          "Contactar",
        ),
        icon: Icon(Icons.phone),
      ),
    );
  }
}
