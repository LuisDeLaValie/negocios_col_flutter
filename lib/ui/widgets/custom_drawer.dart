import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive/hive.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  void initState() {
    var boxSesion = Hive.box('Sesion');
    final idSesion = boxSesion.get('id_sesion');
    NegociosColApi().getNegocio(idSesion).then(
      (value) {
        setState(() {
          negocio = value;
        });
      },
    );
    super.initState();
  }

  NegocioModel? negocio;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Header(
            imagen: negocio?.imagen ?? "",
            nombre: negocio?.nombre ?? "",
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    // Navigate to Home page
                    context.router.pushNamed('/');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text('Negocio'),
                  onTap: () {
                    var boxSesion = Hive.box('Sesion');
                    // Navigate to Account page
                    context.router.pushNamed(
                        '/editar/negocio/${boxSesion.get('id_sesion')}');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Contactos'),
                  onTap: () {
                    // Navigate to Contact page
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String? imagen;
  final String? nombre;
  const Header({
    super.key,
    this.imagen,
    this.nombre,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Stack(
        children: [
          if (imagen != null)
            Container(
              width: double.infinity,
              height: double.infinity,
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.3),
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(imagen!),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          if (imagen == null)
            const SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Icon(
                Icons.contact_emergency_sharp,
                size: 100,
                color: Colors.grey
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
                nombre ?? "Sin Sesion",
                style: const TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
