import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/header_negocios.dart';

@RoutePage()
class ProductoPage extends StatefulWidget {
  final int idNegocio;
  final int? idPS;
  const ProductoPage({
    super.key,
    @PathParam.inherit('negocio') required this.idNegocio,
    @PathParam('id') required this.idPS,
  });

  @override
  State<ProductoPage> createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {
  NegocioModel? negocio;
  ProductoModel? producto;

  @override
  void initState() {
    print('vista de produstos');
    getData();
    super.initState();
  }

  Future<void> getData() async {
    negocio = await NegociosColApi().getNegocio(widget.idNegocio);

    producto = await NegociosColApi().getProducto(widget.idPS!);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderNegocio(negocio: negocio),
            SizedBox(height: 10),
            Text(
              producto?.nombre ?? "",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                if (producto != null)
                  Image.network(
                    producto?.imagen ?? "",
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                if (producto == null)
                  const Icon(
                    Icons.photo,
                    size: 150,
                    color: Colors.grey,
                  ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    producto?.descripsion ?? "",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final Uri tel = Uri(scheme: 'tel', path: negocio!.telefono);
          launchUrl(tel);
        },
        label: const Text("Contactar"),
        icon: const Icon(Icons.phone),
      ),
    );
  }
}
