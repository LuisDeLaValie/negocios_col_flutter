import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Header(),
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
                    // Navigate to Account page
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
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
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Icon(
              Icons.contact_emergency_sharp,
              size: 100,
              color: Colors.grey,
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
