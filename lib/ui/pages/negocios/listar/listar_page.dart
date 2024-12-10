import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:negocios_col_flutter/ui/pages/negocios/widget/lista_productos.dart';
import 'package:negocios_col_flutter/ui/pages/negocios/widget/lista_servicios.dart';
import 'package:negocios_col_flutter/ui/widgets/custom_drawer.dart';

@RoutePage()
class ListarPage extends StatefulWidget {
  final int idNegocio;
  const ListarPage({
    super.key,
    @PathParam.inherit('negocio') required this.idNegocio,
  });

  @override
  State<ListarPage> createState() => _ListarPageState();
}

class _ListarPageState extends State<ListarPage> {
  NegocioModel? negocio;
  List<ServicioModel>? servicios;
  List<ProductoModel>? productos;

  @override
  void initState() {
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
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        endDrawer: const CustomDrawer(),
        appBar: AppBar(
          elevation: 10,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "Productos",
              ),
              Tab(
                text: "Servicios",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListaProductos(
              productos: productos
                      ?.map(
                        (e) => ItemProducto(
                            id: e.id_Producto!,
                            titulo: e.nombre,
                            detalle: e.descripsion,
                            precio: e.precio.toDouble(),
                            imagen: e.imagen!),
                      )
                      .toList() ??
                  [],
            ),
            ListaServicios(
              productos: servicios
                      ?.map(
                        (e) => ItemServicio(
                            id: e.id_servicio!,
                            titulo: e.nombre,
                            detalle: e.descripcion,
                            precio: e.precio.toDouble(),
                            imagen: e.imagen!),
                      )
                      .toList() ??
                  [],
            ),
          ],
        ),
        floatingActionButton: const FloatingActionButtons(),
      ),
    );
  }
}

class FloatingActionButtons extends StatefulWidget {
  const FloatingActionButtons({super.key});

  @override
  State<FloatingActionButtons> createState() => _FloatingActionButtonsState();
}

class _FloatingActionButtonsState extends State<FloatingActionButtons> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (expanded)
          FloatingActionButton.extended(
            heroTag: "producto",
            onPressed: () {
              final currentPath = context.router.currentPath;
              context.router.pushNamed('$currentPath/agregar/producto');
            },
            icon: const Icon(Icons.add_box),
            label: const Text("Producto"),
          ),
        const SizedBox(height: 15),
        if (expanded)
          FloatingActionButton.extended(
            heroTag: "Servicio",
            onPressed: () {
              final currentPath = context.router.currentPath;
              context.router.pushNamed('$currentPath/agregar/servicio');
            },
            icon: const Icon(Icons.add_box),
            label: const Text("Servicio"),
          ),
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              expanded = !expanded;
            });
          },
          child: Icon(expanded ? Icons.close : Icons.add),
        ),
      ],
    );
  }
}
