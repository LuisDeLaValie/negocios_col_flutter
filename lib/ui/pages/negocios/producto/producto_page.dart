import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';

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
  List<ServicioModel>? servicios;
  List<ProductoModel>? productos;

  @override
  void initState() {
    print('vista de produstos');
    getData();
    super.initState();
  }

  Future<void> getData() async {
    negocio = await NegociosColApi().getNegocio(widget.idNegocio);

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
        ],
      )),
    );
  }
}
