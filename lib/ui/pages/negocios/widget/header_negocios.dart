
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';

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
        Positioned(
          // top: 10,
          // left: 10,
          child: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
