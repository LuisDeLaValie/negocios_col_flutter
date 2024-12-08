// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';

@RoutePage()
class LoginNegocio extends StatefulWidget {
  final Function(bool login) isLogin;
  const LoginNegocio({
    super.key,
    required this.isLogin,
  });

  @override
  State<LoginNegocio> createState() => _LoginNegocioState();
}

class _LoginNegocioState extends State<LoginNegocio> {
  final TextEditingController _controllerCorreo = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(),

      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "NegocioCol",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _controllerCorreo,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Correo",
                    labelText: "Correo",
                    suffixIcon: IconButton(
                      onPressed: () {
                        _controllerCorreo.text = "";
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _controllerPass,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Contraseña",
                    labelText: "Contraseña",
                    suffixIcon: IconButton(
                      onPressed: () {
                        _controllerPass.text = "";
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: login,
                  child: const Center(child: Text("Login")),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    context.router.pushNamed('/crear/negocio');
                  },
                  child: const Text("No tengo cuneta"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    final res = await NegociosColApi()
        .loginNegocio(_controllerCorreo.text, _controllerPass.text);
    print(res.toJson());

    var boxSesion = Hive.box('Sesion');
    boxSesion.put('id_sesion', res.id_Negocio);
    context.router.replaceNamed('/editar/negocio/${res.id_Negocio}');
  }
}
