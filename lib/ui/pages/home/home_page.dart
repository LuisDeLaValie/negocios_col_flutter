import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:negocios_col_flutter/ui/pages/buscar/buscar_page.dart';
import 'package:negocios_col_flutter/ui/pages/home/widget/cards_home.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NegocioModel> ultimosNegocios = [];
  List<ServicioModel> ultimosServicios = [];
  List<ProductoModel> ultimosProductos = [];

  @override
  void initState() {
    super.initState();
    NegociosColApi()
        .getLastNegocios()
        .then((value) => setState(() => ultimosNegocios = value));
    NegociosColApi()
        .getLastServicio()
        .then((value) => setState(() => ultimosServicios = value));
    NegociosColApi()
        .getLastProducto()
        .then((value) => setState(() => ultimosProductos = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 10,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 85),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Buscar",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onTap: () {
                context.router.pushNamed('/buscar');
              },
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCardsHome(
                items: ultimosProductos
                    .map((e) => ItemCardHome(titulo: e.nombre, path: e.imagen))
                    .toList(),
                tituloLista: "Mas Buscados",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCardsHome(
                items: ultimosNegocios
                    .map((e) => ItemCardHome(titulo: e.Nombre, path: e.Imagen))
                    .toList(),
                // items: List.generate(
                //   10,
                //   (index) => ItemCardHome(titulo: "dato $index", path: "path"),
                // ),
                tituloLista: "Nuevos negocios",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCardsHome(
                items: ultimosServicios
                    .map((e) => ItemCardHome(titulo: e.nombre, path: e.imagen))
                    .toList(),
                tituloLista: "Recomendados",
              ),
            )
          ],
        ),
      ),
    );
  }
}
