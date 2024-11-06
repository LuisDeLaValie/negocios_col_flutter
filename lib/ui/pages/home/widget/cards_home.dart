// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemCardHome {
  final String titulo;
  final String? imagen;
  final String path;
  ItemCardHome({
    required this.titulo,
    this.imagen,
    required this.path,
  });
}

class ListCardsHome extends StatelessWidget {
  final List<ItemCardHome> items;
  final String tituloLista;
  const ListCardsHome({
    super.key,
    required this.items,
    required this.tituloLista,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(tituloLista),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...items.map((item) => SizedBox(width: 185, height: 100
              , child: CardsHome(item: item))),
              // ...List.generate(items.length, (index) => SizedBox(height: 10)),
            ],
          ),
        ),
      ],
    );
  }
}

class CardsHome extends StatelessWidget {
  final ItemCardHome item;
  const CardsHome({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            color: Colors.grey,
          ),
          Text(item.titulo)
        ],
      ),
    );
  }
}
