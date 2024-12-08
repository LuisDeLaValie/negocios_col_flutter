import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:auto_route/auto_route.dart';

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
                    image: NetworkImage(negocio!.imagen ?? ""),
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
              negocio?.nombre ?? "",
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
              context.router.back();
              // Navigator.of(context).pop();
            },
          ),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text("Me intereza"),
              icon: const Icon(Icons.star),
            )
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.star),
            // ),
            )
      ],
    );
  }
}
