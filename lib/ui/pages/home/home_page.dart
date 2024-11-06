import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/ui/pages/buscar/buscar_page.dart';
import 'package:negocios_col_flutter/ui/pages/home/widget/cards_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const BuscarPage(),
                  ),
                );
              },
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCardsHome(
                items: List.generate(
                  10,
                  (index) => ItemCardHome(titulo: "dato $index", path: "path"),
                ),
                tituloLista: "Mas Buscados",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCardsHome(
                items: List.generate(
                  10,
                  (index) => ItemCardHome(titulo: "dato $index", path: "path"),
                ),
                tituloLista: "Nuevos negocios",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCardsHome(
                items: List.generate(
                  10,
                  (index) => ItemCardHome(titulo: "dato $index", path: "path"),
                ),
                tituloLista: "Recomendados",
              ),
            )
          ],
        ),
      ),
    );
  }
}
