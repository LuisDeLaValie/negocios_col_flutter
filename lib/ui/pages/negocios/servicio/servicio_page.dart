import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';

import '../widget/header_negocios.dart';

@RoutePage()
class ServicioPage extends StatefulWidget {
  final int idNegocio;
  final int? idPS;
  const ServicioPage({
    super.key,
    @PathParam.inherit('negocio') required this.idNegocio,
    @PathParam('id') required this.idPS,
    int? idProducto,
  });

  @override
  State<ServicioPage> createState() => _ServicioPage();
}

class _ServicioPage extends State<ServicioPage> {
  NegocioModel? negocio;
  List<ServicioModel>? servicios;

  @override
  void initState() {
    print('vista de  servicios');
    getData();
    super.initState();
  }

  Future<void> getData() async {
    negocio = await NegociosColApi().getNegocio(widget.idNegocio);

    servicios = await NegociosColApi().getServicioNegocio(widget.idNegocio);

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
