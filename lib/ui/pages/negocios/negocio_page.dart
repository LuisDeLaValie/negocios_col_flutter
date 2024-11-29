// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';

class NegocioPage extends StatefulWidget {
  final int idNegocio;
  const NegocioPage({
    Key? key,
    required this.idNegocio,
  }) : super(key: key);

  @override
  State<NegocioPage> createState() => _NegocioPageState();
}

class _NegocioPageState extends State<NegocioPage> {
  NegocioModel? negocio;

  @override
  void initState() {
    NegociosColApi().getNegocio(widget.idNegocio).then(
      (value) {
        setState(() {
          negocio = value!;
        });
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [HeaderNegocio(negocio: negocio)],
        ),
      ),
    );
  }
}

class HeaderNegocio extends StatelessWidget {
  const HeaderNegocio({
    super.key,
    required this.negocio,
  });

  final NegocioModel? negocio;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.3),
          decoration: BoxDecoration(
            color: Colors.grey,
            image: negocio != null
                ? DecorationImage(
                    image: NetworkImage(negocio!.Imagen),
                    fit: BoxFit.fill,
                  )
                : null,
          ),
        ),
        Positioned(
          bottom: 5,
          left: 5,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              negocio?.Nombre ?? "",
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
}
